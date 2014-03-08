/*
 * *************************************************************************
 * Copyright (C) FRS Belgium NV ("FRSGlobal"). All rights reserved.
 *
 * This computer program is protected by copyright law and international
 * treaties. Unauthorized reproduction or distribution of this program,
 * or any portion of it, may result in severe civil and criminal penalties,
 * and will be prosecuted to the maximum extent possible under the law.
 * *************************************************************************
 */

globalData = {};

function onPageReady()
{
    var stationId = getUrlVars()['stationId'];

    if (stationId)
    {
        globalData.stationId = stationId;

        $.ajax('data', {
            type : 'POST',
            dataType : 'json',
            data : {action : 'getMapInfo', stationId : stationId},
            success : onMapInfoSuccess
        })
    }
    else
    {
        alert('No station specified in request');
    }
}

function onMapInfoSuccess(data, status, request)
{
    var stationInfo = data.stationInfo;
    globalData.stationInfo = stationInfo;
    var stationCoordinate = stationInfo.coordinate;

    var stationLatLng = new google.maps.LatLng(stationCoordinate.y, stationCoordinate.x);
    var mapOptions = {
        center : stationLatLng,
        zoom : 18
    };
    var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

    var marker = new google.maps.Marker({
        position : stationLatLng,
        title : stationInfo.stationId
    });

    globalData.stationMarker = marker;

    // To add the marker to the map, call setMap();
    marker.setMap(map);

    // TODO start refreshing the map
}

// Read a page's GET URL variables and return them as an associative array.
function getUrlVars()
{
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}