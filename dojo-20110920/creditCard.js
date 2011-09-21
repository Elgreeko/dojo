var CreditCard = function(number) {
  this.number = (number || "").replace(/ /g, "");
  this.length = this.number.length;

  var isVISA = function() {
    return (this.length == 13 || this.length == 16)
      && this.number.substring(0,1) == "4";
  };

  var isAMEX = function() {
    var prefix = this.number.substring(0,2);

    return this.length == 15 &&
      (prefix == "34" || prefix == "37");
  };

  var isDISCOVER = function() {
    return this.length == 16 &&
      this.number.substring(0,4) == "6011";
  };

  var isMASTERCARD = function() {
    var prefix = parseInt(this.number.substring(0,2), 10);

    return this.length == 16 &&
      (51 <= prefix && prefix <= 55);
  };

  var isValidLuhnCode = function() {
    var acc = 0;

    for (var i = this.length - 1; i >= 0; i--) {
      var currentInteger = parseInt(this.number[i], 10);
      acc += i % 2 == 0 ? currentInteger * 2 : currentInteger ;
    }

    return acc % 10 == 0;
  };

  this.provider = function() {
    if(isVISA.apply(this)) {
      return "VISA";
    } else if(isAMEX.apply(this)) {
      return "AMEX";
    } else if(isDISCOVER.apply(this)) {
      return "DISCOVER";
    } else if(isMASTERCARD.apply(this)) {
      return "MASTERCARD";
    } else {
      return null;
    }
  };

  this.isValid = function() {
    return this.provider() !== null && isValidLuhnCode.apply(this);
  };
}