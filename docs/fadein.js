var li = 0,
    fade = d3.selectAll(".d3");

document.onclick = function() {
    fade.filter((_,i)=>i===li).transition().duration(300).style("opacity",1);
    li++;
}
