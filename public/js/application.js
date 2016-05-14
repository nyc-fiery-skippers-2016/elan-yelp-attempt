$(document).ready(function() {
  $( '.category-nav' ).on( 'click', 'a', function( e ) {
    e.preventDefault()
    debugger;
    var target = e.target
    var table = $( target ).attr( 'href' )
    var selectedTable = $( '.selected' )

    $( selectedTable ).removeClass( 'selected' )
    $( target ).addClass( 'selected' )

    var activeClasses = document.getElementsByClassName('active')
    $( activeClasses ).removeClass( 'active' ).addClass( 'inactive' )
    $( '.' + table ).removeClass( 'inactive' ).addClass( 'active' )
  });

  $( '.sample-place' ).submit( function( e ) {
    e.preventDefault()
    var target = e.target;
    var type = target.method;
    var url = target.action;
    var data = $( target ).serialize();
    debugger;

    $.ajax({
      type: type,
      url: url,
      data: data
    }).done( function( response ) {
      $( '.sample-place' ).empty().append( response )
    });
  });
});
