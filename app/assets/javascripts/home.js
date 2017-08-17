$( document ).ready( function() {
  $( "form.dob-check" ).on( "submit", function( e ) {
    e.preventDefault();
    var dateString = e.target[ 0 ].value
    var today = new Date();
    var birthDate = new Date( dateString );
    var age = today.getFullYear() - birthDate.getFullYear();

    if ( age < 65 ) {
      $( ".over-inst" ).hide();
      $( ".ocr-single" ).show();
    } else {
      $( ".ocr-single" ).hide();
      $( ".over-inst" ).show();
    }
  });

  $( "form.yesno" ).on( "submit", function( e ) {
    e.preventDefault();

    var valuation = e.target[ 0 ].value;

    if ( valuation === "no" ) {
      $( ".ocr-double" ).hide();
      $( ".hide-on-yesno" ).show();
    } else {
      $( ".hide-on-yesno" ).hide();
      $( ".ocr-double" ).show();
    }
  });
})
