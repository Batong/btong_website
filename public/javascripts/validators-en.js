
Object.extend(Form.Validator.Validators, {
  Version: '0.2.0',

  _parseDate: function(date) {
    var match = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix.exec(date);
    if (!match) {
      return undefined;
    }
    return [ match[3], match[1], match[2] ];
  }
});
