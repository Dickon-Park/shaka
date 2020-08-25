const initLoadMore = () => {
    $(".review").slice(0, 4).show();

    $("#load-more").on("click", function(){
        $(".review:hidden").slice(0, 2).show();

        if($(".review:hidden").length == 0){
            $("#load-more").fadeOut();
        }
    })
};

export { initLoadMore };