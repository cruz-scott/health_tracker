var svg = d3.select("svg");

var g = svg.append("g");
g.attr("transform", "translate(100,50)");

var gx = g.append("g")
gx.attr("transform", "translate(0,400)");

var x = d3.scale.linear()
    .domain([1, 10])
    .range([0, 80]);
var y = d3.scale.linear()
    .domain([10, 2000])
    .range([400, 0]);

var y_axis = d3.svg.axis().scale(y).orient("left").ticks(4);
g.call(y_axis);

var x_axis = d3.svg.axis().scale(x).orient("bottom").ticks(5).tickFormat(d3.format("d"));
gx.call(x_axis);

d3.json("http://localhost:3000/exercises.json", function(data) {
  g.selectAll("circle")
      .data(data)
    .enter().append("circle")
      .attr("cx", function(d) {return x(d["exercise_type_id"]);} )
      .attr("cy", function(d) {return y(d["calories_burned"]);} )
      .attr("r", 10);
});
