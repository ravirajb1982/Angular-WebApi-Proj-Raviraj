app.directive('netmask', function () {
    return {
        require: 'ngModel',
        link: function (scope, elem, attrs, ctrl) {
            ctrl.$validators.netmask = function (modelValue, viewValue) {
                if (ctrl.$isEmpty(modelValue)) {
                    return false;
                }
                var matcher;
                if ((matcher = viewValue.match(/^([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})$/)) != null) {
                    var i;
                    var availableMasks = ["255", "254", "252", "248", "240", "224", "192", "128", "0"];
                    var previous = "255";
                    for (i = 1; i < 5; i++) {
                        if (previous === "255" && (availableMasks.indexOf(matcher[i]) !== -1)) {
                            previous = matcher[i];
                        }
                        else {
                            if (matcher[i] !== "0") {
                                return false;
                            }
                        }
                    }
                    return true;
                }
                else {
                    return false;
                }
            }
        }
    }
});

app.directive('ipaddress', function () {
    return {
        require: 'ngModel',
        link: function (scope, elem, attrs, ctrl) {
            ctrl.$validators.ipaddress = function (modelValue, viewValue) {
                if (ctrl.$isEmpty(modelValue)) {
                    return false;
                }
                var matcher;
                if ((matcher = viewValue.match(/^([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})$/)) != null) {
                    var i;
                    var previous = "255";
                    for (i = 1; i < 5; i++) {
                        var octet = parseInt(matcher[i]);
                        if (octet > 255) return false;
                    }
                    return true;
                }
                else {
                    return false;
                }
            }
        }
    }
});