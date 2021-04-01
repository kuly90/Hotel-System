/**
 * get language
 * @returns language
 */
function getLang() {
  var url = new URL(window.location.href);
  var language = url.searchParams.get("lang");
  if (language == 'undefined' || language == null) {
    language = 'vi';
  }
  return language;
}

function searchTour(tourCategory) {
  alert(tourCategory);
}
/**
 * search city
 * @param cityId
 * @returns city
 */
function goToCity(cityId) {
  var action = "/city?cityId=" + cityId + "&lang=" + getLang();
  window.location.href = action;
}