window.onload = function(){
    
    $("#lookup").click(function(e){
        e.preventDefault();
        $.get("world.php?country="+$("#country").val().trim(), function(data){
            $("#result").html(data);
            $("#country").val("");
        });
    })

    $("#country").keyup(function(e){
        e.preventDefault();
        if(e.keyCode==13){
            $.get("world.php?country="+$("#country").val().trim(), function(data){
                $("#result").html(data);
                $("#country").val("");
            });
        }
    })
}