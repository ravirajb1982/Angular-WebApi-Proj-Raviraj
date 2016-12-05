app.controller('LocationsCtrl', function ($scope, LocationsService) {

    LocationsService.getAll()
        .then(function (result) {
            $scope.locationsData = result;
        });

    $scope.Loc = {
        Id: '',
        Name: '',
        Address: '',
        RackId: '',
        RU: ''
    };

    $scope.clear = function () {
        $scope.Loc.Name = '';
        $scope.Loc.Address = '';
        $scope.Loc.RackId = '';
        $scope.Loc.RU = '';
    }

    $scope.clearMsg = function () {
        $scope.Msg = '';
        $scope.MsgErr = '';
    }

    $scope.CreateLocation = function (Loc, isValid) {
        if (isValid) {
            LocationsService.createLocation(Loc)
             .then(function (result) {
                 if (result.Id !== null) {
                     $scope.Msg = result.Name + " has been successfully created";
                     $scope.clear();
                     LocationsService.getAll()
                         .then(function (result) {
                             $scope.locationsData = result;
                         });
                     $('#LocFormAdd').slideUp();
                 }
                 else {
                     $scope.MsgErr = result;
                 }
             }, function errorCallback(response) {
                 $scope.MsgErr = "Error : " + response.data.ExceptionMessage;
             });
        }
    }


    $scope.toggle = true;
    $scope.toggleFilter = function () {
        $scope.toggle = $scope.toggle === false ? true : false;
    }



    $scope.Edit = function (data) {
        $scope.clearMsg();
        $scope.ShowEdit = true;
        $scope.LocEdit = { Id: data.Id, Name: data.Name, Address: data.Address, RackId: data.RackId, RU: data.RU };
        $('#LocFormAdd').slideUp();
        $('#LocFormEdit').slideDown();
    }

    $scope.Cancel = function () {
        $scope.clearMsg();
        $scope.ShowAdd = false;
        $scope.ShowEdit = false;
    }

    $scope.Add = function () {
        $scope.clearMsg();
        $scope.ShowAdd = true;
        $('#LocFormEdit').slideUp();
        $('#LocFormAdd').slideToggle();
    }

    $scope.Sort = function (col) {
        $scope.key = col;
        $scope.AscOrDesc = !$scope.AscOrDesc;
    }

    $scope.UpdateLocation = function (Loc, isValid) {
        if (isValid) {
            LocationsService.updateLocation(Loc)
             .then(function (result) {
                 $scope.Msg = Loc.Name + " has been successfully updated";
                 $scope.clear();
                 LocationsService.getAll()
                     .then(function (result) {
                         $scope.locationsData = result;
                     });
                 $('#LocFormEdit').slideUp();
             }, function errorCallback(response) {
                 $scope.MsgErr = "Error : " + response.data.ExceptionMessage;
             });
        }
    }

    $scope.DeleteLocation = function (LocId) {
        $('#LocFormAdd').slideUp();
        $('#LocFormEdit').slideUp();
        LocationsService.deleteLocation(LocId)
         .then(function (result) {
             $scope.Msg = result.Name + " has been successfully deleted";

             LocationsService.getAll()
                 .then(function (result) {
                     $scope.locationsData = result;
                 });
         })
    }

});


app.controller('DevicesCtrl', ['$scope', 'DevicesService', 'LocationsService', function ($scope, DevicesService, LocationsService) {

    var vm = this;

    DevicesService.getAll()
        .then(function (result) {
            $scope.devicesData = result;
        });

    LocationsService.getAll()
    .then(function (result) {
        $scope.locationsData = result;
    });


    $scope.Device = {
        Id: '',
        LocationId: '',
        RUHeight: '',
    };

    $scope.clear = function () {
        $scope.Device.Name = '';
        $scope.Device.LocationId = ' ';
        $scope.Device.RUHeight = '';
    }

    $scope.clearMsg = function () {
        $scope.Msg = ' ';
        $scope.MsgErr = ' ';
    }

    $scope.CreateDevice = function (Device, isValid) {
        if (Device.locationId == undefined || Device.locationId == "") {
            $scope.MsgErr = "";
            isvalid = false;
        }
        if (isValid) {
            DevicesService.createDevice(Device)
             .then(function (result) {
                 if (result.Id !== null) {
                     $scope.Msg = result.Name + " has been successfully created";
                     $scope.clear();
                     DevicesService.getAll()
                         .then(function (result) {
                             $scope.devicesData = result;
                         });
                     $('#DeviceFormAdd').slideUp();
                 }
                 else {
                     $scope.MsgErr = result;
                 }
             }, function errorCallback(response) {
                 $scope.MsgErr = "Error : " + response.data.ExceptionMessage;
             });
        }
    }



    $scope.DeviceEdit = {
    };

    $scope.Edit = function (data) {
        $scope.clearMsg();
        $scope.ShowEdit = true;
        $scope.DeviceEdit = { Id: data.Id, LocationId: data.LocationId, Name: data.Name, RUHeight: data.RUHeight };
        $('#DeviceFormAdd').slideUp();
        $('#DeviceFormEdit').slideDown();

    }


    $scope.Add = function () {
        $scope.clear();

        $scope.ShowAdd = true;
        $('#DeviceFormEdit').slideUp();
        $('#DeviceFormAdd').slideToggle();
        $scope.clearMsg();

    }

    $scope.Cancel = function () {

        $scope.clearMsg();
        $scope.ShowAdd = false;
        $scope.ShowEdit = false;
    }

    $scope.Sort = function (col) {
        $scope.key = col;
        $scope.AscOrDesc = !$scope.AscOrDesc;
    }

    $scope.UpdateDevice = function (Device, isValid) {
        if (isValid) {
            DevicesService.updateDevice(Device)
             .then(function (result) {
                 $scope.Msg = Device.Name + " has been successfully updated";
                 $scope.clear();
                 DevicesService.getAll()
                     .then(function (result) {
                         $scope.devicesData = result;
                     });
                 $('#DeviceFormEdit').slideUp();
             }, function errorCallback(response) {
                 $scope.MsgErr = "Error : " + response.data.ExceptionMessage;
             });
        }
    }

    $scope.DeleteDevice = function (DeviceId) {
        $('#DeviceFormAdd').slideUp();
        $('#DeviceFormEdit').slideUp();
        DevicesService.deleteDevice(DeviceId)
         .then(function (result) {
             $scope.Msg = result.Name + " has been successfully deleted";

             DevicesService.getAll()
                 .then(function (result) {
                     $scope.devicesData = result;
                 });
         })
    }

}]);


app.controller('InterfacesCtrl', ['$scope', 'InterfacesService', 'DevicesService', function ($scope, InterfacesService, DevicesService) {
    InterfacesService.getAll()
        .then(function (result) {
            $scope.interfacesData = result;
        });

    DevicesService.getAll()
    .then(function (result) {
        $scope.devicesData = result;
    });

    $scope.Interface = {
        Id: '',
        Name: '',
        Device_Id: ''
    };

    $scope.clear = function () {
        $scope.Interface.Name = '';
        $scope.Interface.Device_Id = ' ';
    }

    $scope.clearMsg = function () {
        $scope.Msg = ' ';
        $scope.MsgErr = ' ';
    }

    $scope.CreateInterface = function (Interface, isValid) {
        if (Interface.Device_Id == undefined || Interface.Device_Id == "") {
            $scope.MsgErr = "";
        }
        if (isValid) {
            InterfacesService.createInterface(Interface)
             .then(function (result) {
                 if (result.Id !== null) {
                     $scope.Msg = result.Name + " has been successfully created";
                     $scope.clear();
                     InterfacesService.getAll()
                         .then(function (result) {
                             $scope.interfacesData = result;
                         });
                     $('#InterfaceFormAdd').slideUp();
                 }
                 else {
                     $scope.MsgErr = result;
                 }
             }, function errorCallback(response) {
                 $scope.MsgErr = "Error : " + response.data.ExceptionMessage;
             });
        }
    }


    $scope.IfcEdit = {
    };

    $scope.Edit = function (data) {
        $scope.clearMsg();
        $scope.ShowEdit = true;
        $scope.IfcEdit = { Id: data.Id, Device_Id: data.Device_Id, Name: data.Name };
        $('#InterfaceFormAdd').slideUp();
        $('#InterfaceFormEdit').slideDown();

    }


    $scope.Add = function () {
        $scope.clear();
        $scope.ShowAdd = true;
        $('#InterfaceFormEdit').slideUp();
        $('#InterfaceFormAdd').slideToggle();
        $scope.clearMsg();

    }

    $scope.Cancel = function () {

        $scope.clearMsg();
        $scope.ShowAdd = false;
        $scope.ShowEdit = false;
    }

    $scope.Sort = function (col) {
        $scope.key = col;
        $scope.AscOrDesc = !$scope.AscOrDesc;
    }

    $scope.UpdateInterface = function (Interface, isValid) {
        if (isValid) {
            InterfacesService.updateInterface(Interface)
             .then(function (result) {
                 $scope.Msg = Interface.Name + " has been successfully updated";
                 $scope.clear();
                 InterfacesService.getAll()
                     .then(function (result) {
                         $scope.interfacesData = result;
                     });
                 $('#InterfaceFormEdit').slideUp();
             }, function errorCallback(response) {
                 $scope.MsgErr = "Error : " + response.data.ExceptionMessage;
             });
        }
    }

    $scope.DeleteInterface = function (InterfaceId) {
        $('#InterfaceFormAdd').slideUp();
        $('#InterfaceFormEdit').slideUp();
        InterfacesService.deleteInterface(InterfaceId)
         .then(function (result) {
             $scope.Msg = result.Name + " has been successfully deleted";

             InterfacesService.getAll()
                 .then(function (result) {
                     $scope.interfacesData = result;
                 });
         })
    }

}]);


app.controller('IPAddressesCtrl', ['$scope', 'IPAddressesService', 'InterfacesService', function ($scope, IPAddressesService, InterfacesService) {
    IPAddressesService.getAll()
        .then(function (result) {
            $scope.ipAddressesData = result;
        });

    InterfacesService.getAll()
    .then(function (result) {
        $scope.interfacesData = result;
    });


    $scope.IPAddress = {
        Id: '',
        IsV6:false,
        InterfaceId: '',
        Address: '',
        Subnet: ''
    };

    $scope.clear = function () {
        $scope.IPAddress.IsV6 = false;
        $scope.IPAddress.InterfaceId = ' ';
        $scope.IPAddress.Address = ' ';
        $scope.IPAddress.Subnet = ' ';
        //$scope.IPAddress.Msg = ' ';
      //  $scope.IPAddress.MsgErr = ' ';
    }

    $scope.clearMsg = function () {
        $scope.Msg = ' ';
        $scope.MsgErr = ' ';
    }

    $scope.CreateIPAddress = function (IPAddress, isValid) {
        if (IPAddress.InterfaceId == undefined || IPAddress.InterfaceId == "") {
            $scope.MsgErr = "";
        }
        if (isValid) {
            IPAddressesService.createIPAddress(IPAddress)
             .then(function (result) {
                 if (result.Id !== null) {
                     $scope.Msg = result.Address + " has been successfully created";
                     $scope.clear();
                     IPAddressesService.getAll()
                         .then(function (result) {
                             $scope.ipAddressesData = result;
                         });
                     $('#IPAddressFormAdd').slideUp();
                 }
                 else {
                     $scope.MsgErr = result;
                 }
             }, function errorCallback(response) {
                 $scope.MsgErr = "Error : " + response.data.ExceptionMessage;
             });
        }
    }


    $scope.toggle = true;
    $scope.toggleFilter = function () {
        $scope.toggle = $scope.toggle === false ? true : false;
    }

    $scope.IpAddressEdit = {
    };


    //$scope.IpAddress = {
    //};

    $scope.Edit = function (data) {
        $scope.clear();
        $scope.clearMsg();
        $scope.ShowEdit = true;
        $scope.IpAddressEdit = { Id: data.Id, IsV6:data.IsV6 ,InterfaceId: data.InterfaceId, Address: data.Address, Subnet: data.Subnet };
        $('#IPAddressFormAdd').slideUp();
        $('#IPAddressFormEdit').slideDown();
    }


    $scope.Add = function () {
        $scope.clear();
        $scope.ShowAdd = true;

        $('#IPAddressFormEdit').slideUp();
        $('#IPAddressFormAdd').slideToggle();
       // $scope.IpAddress = { InterfaceId: null }
        $scope.clearMsg();
    }

    $scope.Cancel = function () {
        $scope.clearMsg();
        $scope.ShowAdd = false;
        $scope.ShowEdit = false;
    }

    $scope.Sort = function (col) {
        $scope.key = col;
        $scope.AscOrDesc = !$scope.AscOrDesc;
    }

    $scope.UpdateIPAddress = function (IPAddress, isValid) {
        if (isValid) {
            IPAddressesService.updateIPAddress(IPAddress)
             .then(function (result) {
                 $scope.Msg = IPAddress.Address + " has been successfully updated";
                 $scope.clear();
                 IPAddressesService.getAll()
                     .then(function (result) {
                         $scope.ipAddressesData = result;
                     });
                 $('#IPAddressFormEdit').slideUp();
             }, function errorCallback(response) {
                 $scope.MsgErr = "Error : " + response.data.ExceptionMessage;
             });
        }
    }

    $scope.DeleteIPAddress = function (IPAddressId) {
        $('#IPAddressFormAdd').slideUp();
        $('#IPAddressFormEdit').slideUp();
        IPAddressesService.deleteIPAddress(IPAddressId)
         .then(function (result) {
             $scope.Msg = result.Address + " has been successfully deleted";

             IPAddressesService.getAll()
                 .then(function (result) {
                     $scope.ipAddressesData = result;
                 });
         })
    }

}]);