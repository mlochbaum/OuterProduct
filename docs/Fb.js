var g = d3.select("svg"),
    w = 1800;
for (var i = 0; ; ) {
    g.append("rect").attrs({x:0,y:0,height:10,width:w,fill:"black"});
    w /= 3; if (++i >= 10) break;
    g = g.selectAll().data([0,2]).enter()
        .append("g").attr("transform",i=>"translate("+i*w+",30)");
}
