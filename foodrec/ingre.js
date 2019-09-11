drawPie("ingre.csv");
d3.select("#food").on("change",function(){
  var value = this.value;
  d3.select("#myGraph").selectAll("*").remove();

  d3.csv("ingre.csv", function(error, data){
    console.log(value);


    var dataSet = [];

    for(var i=0; i<data.length; i++){
      dataSet.push(data[i][value]);
    }
    console.log(dataSet);


    var svgEle = document.getElementById("myGraph");
    var svgWidth = window.getComputedStyle(svgEle, null).getPropertyValue("width");
    var svgHeight = window.getComputedStyle(svgEle, null).getPropertyValue("height");

    svgWidth = parseFloat(svgWidth);
    svgHeight = parseFloat(svgHeight);

    var pie = d3.layout.pie()

    var arc = d3.svg.arc().innerRadius(30).outerRadius(100)

    var pieElements = d3.select("#myGraph")
      .selectAll("g")
      .data(pie(dataSet))
      .enter()
      .append("g")
      .attr("transform", "translate("+svgWidth/2+", "+svgHeight/2+")")

      pieElements
        .append("path")
        .attr("class","pie")
        .style("fill", function(d,i){
          return ["#00bcd4", "#FF9800", "#ffeb3b", "#673ab7d6", "#e84c81", "#8bc34a"][i];
        })
        .transition()
        .duration(200)
        .delay(function(d,i){
          return i*200;
        })
        .ease("linear")
        .attrTween("d", function(d, i){
          var interpolate = d3.interpolate(
            { startAngle : d.startAngle, endAngle : d.startAngle },
            { startAngle : d.startAngle, endAngle : d.endAngle }
          );
          return function(t){
            return arc(interpolate(t));
          }
        })

        var textElements = d3.select("#myGraph")
          .append("text")
          .attr("class", "total")
          .attr("transform", "translate("+svgWidth/2+", "+(svgHeight/2+5)+")")
          .text("점유율")

          pieElements
            .append("text")
            .attr("class","pieNum")
            .attr("transform", function(d, i){
              return "translate("+arc.centroid(d)+")";
            })
            .text(function(d,i){
              return d.value;
            })



  });

});


function drawPie(filename){
  d3.csv(filename, function(error, data){
    var dataSet = [];
    console.log('배숙');
    for(var i=0; i<data.length; i++){
      dataSet.push(data[i]['배숙']);
    }
    console.log(dataSet);

    var svgEle = document.getElementById("myGraph");
    var svgWidth = window.getComputedStyle(svgEle, null).getPropertyValue("width");
    var svgHeight = window.getComputedStyle(svgEle, null).getPropertyValue("height");

    svgWidth = parseFloat(svgWidth);
    svgHeight = parseFloat(svgHeight);

    var pie = d3.layout.pie()

    var arc = d3.svg.arc().innerRadius(30).outerRadius(100)

    var pieElements = d3.select("#myGraph")
      .selectAll("g")
      .data(pie(dataSet))
      .enter()
      .append("g")
      .attr("transform", "translate("+svgWidth/2+", "+svgHeight/2+")")

      pieElements
        .append("path")
        .attr("class","pie")
        .style("fill", function(d,i){
          return ["#00bcd4", "#FF9800", "#ffeb3b", "#673ab7d6", "#e84c81", "#8bc34a"][i];
        })
        .transition()
        .duration(200)
        .delay(function(d,i){
          return i*200;
        })
        .ease("linear")
        .attrTween("d", function(d, i){
          var interpolate = d3.interpolate(
            { startAngle : d.startAngle, endAngle : d.startAngle },
            { startAngle : d.startAngle, endAngle : d.endAngle }
          );
          return function(t){
            return arc(interpolate(t));
          }
        })

        var textElements = d3.select("#myGraph")
          .append("text")
          .attr("class", "total")
          .attr("transform", "translate("+svgWidth/2+", "+(svgHeight/2+5)+")")
          .text("점유율")

          pieElements
            .append("text")
            .attr("class","pieNum")
            .attr("transform", function(d, i){
              return "translate("+arc.centroid(d)+")";
            })
            .text(function(d,i){
              return d.value;
            })
  });
}