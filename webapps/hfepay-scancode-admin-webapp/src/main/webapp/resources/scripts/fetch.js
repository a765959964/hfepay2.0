var fetch = function(url, data, method){
  return new Promise(function(resolve, reject){
	 $.ajax({
      url: baseUrl + url,
      data : data,
      method : method,
      dataType: 'json',
      success: resolve,
      error: reject
     
    })
  });
}
