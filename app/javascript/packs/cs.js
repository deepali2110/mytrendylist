var myHeaders = new Headers();
myHeaders.append("Device-ID", "e47e310e9d303784");
myHeaders.append("app_source", "Android");
myHeaders.append("Sub-App", "");
myHeaders.append("app_version", "2.0.0");
myHeaders.append("COUNTRY", "IN");
myHeaders.append("Token", "a2487f5de1a4c4e5d99e459f7b8a4bc577238ff11792499235bfa86e71443a43");

var requestOptions = {
  method: 'GET',
  headers: myHeaders,
  redirect: 'follow'
  
};

fetch("https://api.mirraw.com/api/v1/designs/3030919/similar_designs_unbxd", requestOptions)
  .then(response => response.text())
  .then(result => console.log(result))
  .catch(error => console.log('error', error));