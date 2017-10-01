
var dateStr = '2017-09-18 15:00:00';
jQuery('#weather2').document.write(dateStr);

function replaceDate(dateStr) {
  const regexp = /^([0-9]{2,4})-([0-1][0-9])-([0-3][0-9])(?:( [0-2][0-9]):([0-5][0-9]):([0-5][0-9]))?$/;
  return dateStr.replace(regexp, (match, year, month, day, hour, minutes, seconds) => {
    return `${year}-${month}-${ day}T${hour}:${minutes}:${seconds}.000+09:00`;
  });
}