function myFunction() {
   document.getElementById("demo").innerHTML = "Paragraph changed.";
}
function myFunctiononload() { 
	alert("myFunction alert");
	console.log("myFunction alert");
   document.getElementById("demo1").innerHTML = "Paragraph myFunctiononload.";
}