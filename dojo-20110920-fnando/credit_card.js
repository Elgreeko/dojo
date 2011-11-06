;(function(window){
  var length = 0;
  var number = null;

  function CreditCard(number) {
    this.setNumber(number);
  }

  function isVisa() {
    return (length == 13 || length == 16) && number.charAt(0) == "4";
  }

  function isAmex() {
    var prefix = number.substring(0, 2);
    return length == 15 && (prefix == "34" || prefix == "37");
  }

  function isDiscover() {
    return length == 16 && number.substring(0, 4) == "6011";
  }

  function isMasterCard() {
    var prefix = parseInt(number.substring(0, 2), 10);
    return length == 16 && (51 <= prefix && prefix <= 55);
  }

  function isValidLuhnCode() {
    var acc = 0
      , current
    ;

    for (var i = length - 1; i >= 0; i--) {
      current = parseInt(number[i], 10);
      acc += i % 2 === 0 ? current * 2 : current;
    }

    return acc % 10 === 0;
  }

  CreditCard.prototype.setNumber = function(cc) {
    number = (cc || "").replace(/[\s-.]/g, "");
    length = number.length;
  }

  CreditCard.prototype.provider = function() {
    if (!number) { return null; }
    if (isVisa()) { return "VISA"; }
    if (isAmex()) { return "AMEX"; }
    if (isDiscover()) { return "DISCOVER"; }
    if (isMasterCard()) { return "MASTERCARD"; }
    return null;
  }

  CreditCard.prototype.isValid = function() {
    return this.provider() && isValidLuhnCode();
  }

  window.CreditCard = CreditCard;
})(window);
