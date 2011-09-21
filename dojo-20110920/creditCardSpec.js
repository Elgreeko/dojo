describe("Credit card validator", function() {
  describe("returns provider", function() {
    describe("VISA Credit card", function() {
      describe("with 16 digits", function() {
        it("validates provider", function() {
          var creditCard = new CreditCard("4111 1111 1111 1111");
          expect(creditCard.provider()).toEqual("VISA");
        });
      });

      describe("with 13 digits", function() {
        it("validates provider", function() {
          var creditCard = new CreditCard("4111 1111 1111 1");
          expect(creditCard.provider()).toEqual("VISA");
        });
      });

      describe("starting with 4 with 15 digits", function() {
        it("is not VISA", function() {
          var creditCard = new CreditCard("4111 1111 1111 111");
          expect(creditCard.provider()).toEqual(null);
        });
      });
    });

    describe("AMEX Credit card", function() {
      describe("with 15 digits and beginning with 34", function() {
        it("validates provider", function() {
          var creditCard = new CreditCard("3411 1111 1111 111");
          expect(creditCard.provider()).toEqual("AMEX");
        });
      });

      describe("with 15 digits and beginning with 37", function() {
        it("validates provider", function() {
          var creditCard = new CreditCard("3711 1111 1111 111");
          expect(creditCard.provider()).toEqual("AMEX");
        });
      });
    });

    describe("DISCOVER Credit card", function() {
      describe("with 16 digits and beginning with 6011", function() {
        it("validates provider", function() {
          var creditCard = new CreditCard("6011 1111 1111 1111");
          expect(creditCard.provider()).toEqual("DISCOVER");
        });
      });
    });

    describe("MASTERCARD Credit card", function() {
      describe("with 16 digits", function() {
        it("beginning with 51 validates provider", function() {
          var creditCard = new CreditCard("5111 1111 1111 1111");
          expect(creditCard.provider()).toEqual("MASTERCARD");
        });

        it("beginning with 55 validates provider", function() {
          var creditCard = new CreditCard("5511 1111 1111 1111");
          expect(creditCard.provider()).toEqual("MASTERCARD");
        });
      });
    });

    describe("Invalid cards", function() {
      describe("with 16 digits and beginning without 4", function() {
        it("is invalid", function() {
          var creditCard = new CreditCard("3111 1111 1111 1111");
          expect(creditCard.provider()).toEqual(null);
        });
      });

      describe("with 0 digits", function() {
        it("is invalid", function() {
          var creditCard = new CreditCard("");
          expect(creditCard.provider()).toEqual(null);
        });
      });

      describe("with 9999 9999 9999 digits", function() {
        it("is invalid", function() {
          var creditCard = new CreditCard("9999 9999 9999");
          expect(creditCard.provider()).toEqual(null);
        });
      });

      describe("with null", function() {
        it("is invalid", function() {
          var creditCard = new CreditCard();
          expect(creditCard.provider()).toEqual(null);
        });
      });
    });
  });

  describe("credit card validation", function() {
    describe("with 4111 1111 1111 1111", function() {
      it("is valid", function() {
        var creditCard = new CreditCard("4111 1111 1111 1111");
        expect(creditCard.isValid()).toBe(true);
      });
    });

    describe("with 4111 1111 1111 1112", function() {
      it("is invalid", function() {
        var creditCard = new CreditCard("4111 1111 1111 1112");
        expect(creditCard.isValid()).toBe(false);
      });
    });

    describe("with 2131 1111 1111 1111", function() {
      it("is invalid because of the provider", function() {
        var creditCard = new CreditCard("2131 1111 1111 1111");
        expect(creditCard.isValid()).toBe(false);
      });
    });
  });
});
