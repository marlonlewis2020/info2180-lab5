$(document).ready(function(){

    var nav = $("#controls");
    // const ctrltop = nav.offset().top;
    // const ctrlleft = nav.offset().left;

    // $(window).bind("scroll",function(){
    //     if($(this).scrollTop() >= nav.offset().top){
    //         alert("scrolled");
    //         // nav.css("position","fixed");
    //         // nav.offset({top:200,left:0});
    //     }
    //     else{
    //         alert("scrolled");
    //         // nav.css("position","initial");
    //         // nav.offset({top:ctrltop,left:ctrlleft});
    //     }
    // })

    function myphp(){return "world.php?country="+$('#country').val().trim() }
    
    $("#country").keyup(function(e){
        e.preventDefault();
        if(e.keyCode==13){
            $.get(myphp()+"&lookup=countries", function(data){
                $("#result").html(data);
                $("#result").fadeIn("fast");
                $("#country").val("");
            });
        }
    })

    $("#lookup_countries").click(function(e){
        e.preventDefault();
        $.get(myphp()+"&lookup=countries", function(data){
            $("#result").html(data);
            $("#result").fadeIn("fast");
            $("#country").val("");
        });
    })

    $("#lookup_cities").click(function(e){
        e.preventDefault();
        $.get(myphp()+"&lookup=cities", function(data){
            $("#result").html(data);
            $("#result").fadeIn("fast");
            $("#country").val("");
        });
    })

    $("#clear").click(function(e){
        e.preventDefault();
        $("#result").html("<p>data cleared</p>");
        $("#result").fadeOut(500);
    })
})