/**
 * get category search
 * @returns
 */
$(".checkbox").change(function() {
  // get list checkbox
  var checkboxs = $("[name='checkbox']");
  // new action process search
  var action = '/searProductByCategory?cateroryId=';
  // check check box is checked
  var checkedBox = false;
  // loop to check checkbox is checked
  $.each(checkboxs , function(index, val) { 
    if (checkboxs[index].checked) {
      // get category id is checked
      action = action + val.value + ',';
      checkedBox = true;
    }
  });
  if(checkedBox) {
    action = action.substring(0, action.length - 1);
  }
  console.log(action);
  
  window.location.href = action + "&lang=" + getLang();

  
});

function getLang() {
  var url = new URL(window.location.href);
  var language = url.searchParams.get("lang");
  if (language == 'undefined' || language == null) {
    language = 'vi';
  }
  return language;
}

