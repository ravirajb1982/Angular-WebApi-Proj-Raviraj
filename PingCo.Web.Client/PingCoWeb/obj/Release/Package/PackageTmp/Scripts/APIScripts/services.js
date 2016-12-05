
var webApiBaseUrl = window.__env.apiUrl;

app.factory('LocationsService', function ($http) {
    crudLocObj = {};

    crudLocObj.getAll = function () {
        var Locs;

        Locs = $http({ method: 'get', url: webApiBaseUrl + 'locations' })
        .then(function (response) {
            return response.data;
        });
        return Locs;
    }


    crudLocObj.createLocation = function (loc) {

        var Loc;
        Loc = $http({
            method: 'post', url: webApiBaseUrl + 'locations', data: loc
        })
        .then(function successCallback(response) {
            return response.data;
        });
        return Loc;
    }

    crudLocObj.updateLocation = function (loc) {
        var Loc;
        Loc = $http({ method: 'Put', url: webApiBaseUrl + 'locations', params: { id: loc.Id }, data: loc })
        .then(function (response) {
            return response.data;
        });
        return Loc;
    }

    crudLocObj.deleteLocation = function (locId) {
        var Loc;

        Loc = $http({ method: 'Delete', url: webApiBaseUrl + 'locations', params: { id: locId } })
        .then(function (response) {
            return response.data;
        });
        return Loc;
    }

    return crudLocObj;
});

app.factory('DevicesService', function ($http) {
    crudDeviceObj = {};

    crudDeviceObj.getAll = function () {
        var Devices;

        Devices = $http({ method: 'get', url: webApiBaseUrl + 'devices' })
        .then(function (response) {
            return response.data;
        });
        return Devices;
    }


    crudDeviceObj.createDevice = function (Device) {

        var Device;
        Device = $http({
            method: 'post', url: webApiBaseUrl + 'devices', data: Device
        })
        .then(function successCallback(response) {
            return response.data;
        });
        return Device;
    }

    crudDeviceObj.updateDevice = function (Device) {
        var Device;
        Device = $http({ method: 'Put', url: webApiBaseUrl + 'devices', params: { id: Device.Id }, data: Device })
        .then(function (response) {
            return response.data;
        });
        return Device;
    }

    crudDeviceObj.deleteDevice = function (DeviceId) {
        var Device;

        Device = $http({ method: 'Delete', url: webApiBaseUrl + 'devices', params: { id: DeviceId } })
        .then(function (response) {
            return response.data;
        });
        return Device;
    }

    return crudDeviceObj;
});

app.factory('InterfacesService', function ($http) {
    crudInterfaceObj = {};

    crudInterfaceObj.getAll = function () {
        var Interfaces;

        Interfaces = $http({ method: 'get', url: webApiBaseUrl + 'interfaces' })
        .then(function (response) {
            return response.data;
        });
        return Interfaces;
    }


    crudInterfaceObj.createInterface = function (Interface) {

        var Interface;
        Interface = $http({
            method: 'post', url: webApiBaseUrl + 'interfaces', data: Interface
        })
        .then(function successCallback(response) {
            return response.data;
        });
        return Interface;
    }

    crudInterfaceObj.updateInterface = function (Interface) {
        var Interface;
        Interface = $http({ method: 'Put', url: webApiBaseUrl + 'interfaces' ,params: { id: Interface.Id }, data: Interface })
        .then(function (response) {
            return response.data;
        });
        return Interface;
    }

    crudInterfaceObj.deleteInterface = function (InterfaceId) {
        var Interface;

        Interface = $http({ method: 'Delete', url: webApiBaseUrl + 'interfaces', params: { id: InterfaceId } })
        .then(function (response) {
            return response.data;
        });
        return Interface;
    }

    return crudInterfaceObj;
});

app.factory('IPAddressesService', function ($http) {
    crudIPAddressObj = {};

    crudIPAddressObj.getAll = function () {
        var IPAddresses;

        IPAddresses = $http({ method: 'get', url: webApiBaseUrl + 'ipAddresses' })
        .then(function (response) {
            return response.data;
        });
        return IPAddresses;
    }


    crudIPAddressObj.createIPAddress = function (IPAddress) {

        var IPAddress;
        IPAddress = $http({
            method: 'post', url: webApiBaseUrl + 'ipAddresses', data: IPAddress
        })
        .then(function successCallback(response) {
            return response.data;
        });
        return IPAddress;
    }

    crudIPAddressObj.updateIPAddress = function (IPAddress) {
        var IPAddress;
        IPAddress = $http({ method: 'Put', url: webApiBaseUrl + 'ipAddresses', params: { id: IPAddress.Id }, data: IPAddress })
        .then(function (response) {
            return response.data;
        });
        return IPAddress;
    }

    crudIPAddressObj.deleteIPAddress = function (IPAddressId) {
        var IPAddress;

        IPAddress = $http({ method: 'Delete', url: webApiBaseUrl + 'ipAddresses', params: { id: IPAddressId } })
        .then(function (response) {
            return response.data;
        });
        return IPAddress;
    }

    return crudIPAddressObj;
});