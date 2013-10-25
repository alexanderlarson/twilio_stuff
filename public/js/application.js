$(document).ready(function() {
//create three initial fields
  var startingNo = 1;
  var $node = "";
  for(varCount=0;varCount<=startingNo;varCount++){
      var displayCount = varCount+1;
      $node += '<p><label for="var'+displayCount+'">Variable '+displayCount+': </label><input type="text" name="var'+displayCount+'" id="var'+displayCount+'"><span class="removeVar">Killall Number</span></p>';
  }
  // //add them to the DOM
  // $('form').prepend($node);
  //remove a textfield
  $('form').on('click', '.removeVar', function(){
     $(this).parent().remove();

  });
  //add a new node
  $('#addVar').on('click', function(){
  varCount++;
  $node = '<p><label for="var'+varCount+'">Phone number: </label><input type="text" name="phone[var'+varCount+']" id="var'+varCount+'"><span class="removeVar">Killall Number</span></p>';
  console.log($(this).parent());
  $('#add_shit').before($node);
  });
});
