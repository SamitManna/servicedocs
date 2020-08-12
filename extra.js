var loaded = false;

$(document).ready(function() {
    if ($("body>.container iframe").length > 0) {
	$("body>.container .col-md-3").hide();
	$("body>.container .col-md-9").removeClass("col-md-9").addClass("full-width");
	$("body>.container").removeClass("container").addClass("container-fluid");
	$("iframe").css({"height": $(window).height() - 50});
	$(".navbar").css({"margin-bottom": 0});
	$("footer").hide();
    } else {
        var titleText = $("title").text().replace("- ROCC Service Docs Portal", "");
        $("div[role=main]").prepend("<h1>" + titleText + "</h1>");
    }

    //If necessary, set bottom position of left  nav so that footer does not collide
    if ( $(".bs-sidebar").innerHeight() + parseInt($(".bs-sidebar").css("top")) > window.innerHeight -  $("footer").outerHeight()){
        var bottomPosition = $("footer").outerHeight() - parseInt($(".bs-sidebar").css("margin-bottom"));
        $(".bs-sidebar").css("bottom", bottomPosition + "px");
    }

    timeoutChecker();

    $("blockquote").each(function(i,el) {
	var type = $(el).find("p strong:first-child").text();
	switch(type.toLowerCase()) {
	case "warning": var klass = "warning"; break;
	case "troubleshooting": var klass = "troubleshooting"; break;
	default: var klass = "best-practice";
	}
	$(el).addClass(klass);
    });

    // Since we're now only doing it for these keywords inside
    // of s 'strong' tag I'm opening this to all pages
    // Below is the previous lockdown logic
    //if ($("title").text().match(/changelog/i)) {
    $("div[role='main'] strong").each(function() {
	text = $(this).html().replace(/(bugfix|bug fix|improvement|improved|update|updated|new)[:\s]*/ig,
				      function(match,name) { name = name.replace(" ","").toLowerCase(); return '<span class="label label-' + name + '">' + name + '</span> '});
	$(this).html(text);
    });

    $("table").tablesorter();

    function timeoutChecker(){
        //set the scroll handler after load to make sure height is correct
        if ( loaded ) {
            var heightDiff = $(".bs-sidenav").innerHeight() - $(".bs-sidebar").innerHeight();
            if ( heightDiff > 0 ){
                $(document).on("scroll", function(data){
                    updateNavScrollHeight();
                });
            }
        } else  {
            setTimeout(timeoutChecker, 300);
        }
    }

    function updateNavScrollHeight(){
        var pageHeight = $(document).innerHeight() - window.innerHeight,
            scrollAmount = $(document).scrollTop(),
            heightDiff = $(".bs-sidenav").innerHeight() - $(".bs-sidebar").innerHeight(),
            newMargin;

        //If the scrollAmount > 0
        //  adjust the sideNav top margin according to the amount that the page was scrolled
        //  percent scrolled = scrollAmount / height
        //else
        //  reset the top margin to 0
        if ( scrollAmount > 0 ){
            newMargin = - scrollAmount / pageHeight * heightDiff;
            $(".bs-sidenav").css("margin-top", newMargin + "px");
        } else {
            $(".bs-sidenav").css("margin-top", 0);
        }
    }
});

$(window).load(function(){
    loaded = true
});
