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
  var action = "/city?cityId=" + cityId + "&lang=" + getLang() + "&page=1";
  window.location.href = action;
}

/**
 * pagination of city
 * @param pageNuber
 * @returns page number
 */
function changePage(pageNumber, totalPage) {
  var url = new URL(window.location.href);
  var currentPage = url.searchParams.get("page");
  var cityId = url.searchParams.get("cityId");
  if (pageNumber == '-1') {
	  currentPage = parseInt(currentPage) - parseInt(1);
  } else if (pageNumber == '+1') {
    currentPage = parseInt(currentPage) + parseInt(1); 
  } else {
    currentPage = pageNumber
  }
  if (currentPage > 0 && currentPage <= totalPage) {
    var action = "/city?cityId=" + cityId + "&lang=" + getLang() + "&page=" + currentPage;
    window.location.href = action;
  }
  
}

function hotelDetail(hotelId) {
  alert(hotelId);
}