
//header ???????
function animationHeader()
{
	//header MENU select motion Effect 
	$('.gnb li').bind({
		'hover': function(){
			var $this = $(this); 
			$this.find('.lnb').addClass('active');
			$this.addClass('hover');
			
		},
		'mouseout': function(){
		   var $this = $(this); 
			$this.find('.lnb').removeClass('active');	
			$this.removeClass('hover');
		},
		'mouseover': function(){
			var $this = $(this); 
			$this.find('.lnb').addClass('active');
			$this.addClass('hover');
		}
		
		
		
	});	
}	

//side nav 
function updateNavigation()
{
	
	contentSections.each(function(){
		$this = $(this);
		var activeSection = $('#side_nav a[href="#'+$this.attr('id')+'"]').data('number') - 1;
		if ( ( $this.offset().top - $(window).height()/2 < $(window).scrollTop() ) && ( $this.offset().top + $this.height() - $(window).height()/2 > $(window).scrollTop() ) ) {
			navigationItems.eq(activeSection).addClass('is-selected');
		}else {
			navigationItems.eq(activeSection).removeClass('is-selected');
		}
	});
}

//globalNetwort map effect
function globalNetwort()
{  
	var map = $('.map'); 
	var img_map = $('.map').find('.bg_map'); 
	
	map.find('.n_america').bind({	 //map_northamerica	
		'mouseout': function(){
			var org = img_map.attr('src').replace("/map_northamerica.png","/map.png"); 	
			img_map.attr('src', org );
		},
		'mouseover': function(){
			var effect_map = img_map.attr('src').replace("/map.png","/map_northamerica.png"); 
			img_map.attr('src', effect_map );
		}
	});
	map.find('.c_america').bind({	 //map_southamerica	
		'mouseout': function(){
			var org = img_map.attr('src').replace("/map_centralamerica.png","/map.png"); 	
			img_map.attr('src', org );
		},
		'mouseover': function(){
			var effect_map = img_map.attr('src').replace("/map.png","/map_centralamerica.png"); 
			img_map.attr('src', effect_map );
		}
	});
	map.find('.s_america').bind({	 //s_america	
		'mouseout': function(){
			var org = img_map.attr('src').replace("/map_southamerica.png","/map.png"); 	
			img_map.attr('src', org );
		},
		'mouseover': function(){
			var effect_map = img_map.attr('src').replace("/map.png","/map_southamerica.png"); 
			img_map.attr('src', effect_map );
		}
	});		
	map.find('.europe').bind({		//europe
		'mouseout': function(){
			var org = img_map.attr('src').replace("/map_europe.png","/map.png"); 	
			img_map.attr('src', org );
		},
		'mouseover': function(){
			var effect_map = img_map.attr('src').replace("/map.png","/map_europe.png"); 
			img_map.attr('src', effect_map );
		}
	});	
	map.find('.china').bind({		//china	
		'mouseout': function(){
			var org = img_map.attr('src').replace("/map_china.png","/map.png"); 	
			img_map.attr('src', org );
		},
		'mouseover': function(){
			var effect_map = img_map.attr('src').replace("/map.png","/map_china.png"); 
			img_map.attr('src', effect_map );
		}
	});	 
	map.find('.india').bind({		//india	
		'mouseout': function(){
			var org = img_map.attr('src').replace("/map_india.png","/map.png"); 	
			img_map.attr('src', org );
		},
		'mouseover': function(){
			var effect_map = img_map.attr('src').replace("/map.png","/map_india.png"); 
			img_map.attr('src', effect_map );
		}
	}); 
	map.find('.asia').bind({		//asia	
		'mouseout': function(){
			var org = img_map.attr('src').replace("/map_asia.png","/map.png"); 	
			img_map.attr('src', org );
		},
		'mouseover': function(){
			var effect_map = img_map.attr('src').replace("/map.png","/map_asia.png"); 
			img_map.attr('src', effect_map );
		}
	});   
	map.find('.australia').bind({		//australia	
		'mouseout': function(){
			var org = img_map.attr('src').replace("/map_australia.png","/map.png"); 	
			img_map.attr('src', org );
		},
		'mouseover': function(){
			var effect_map = img_map.attr('src').replace("/map.png","/map_australia.png"); 
			img_map.attr('src', effect_map );
		}
	}); 
}	

function animationLnb(){
		var currentTop = $('#side_nav').css('top');
//		console.log(currentTop);	
	$(window).bind({		
		'scroll':function(){		
				
			var currentScroll = $(window).scrollTop();  console.log(currentScroll);
			$('#side_nav').css('top' , parseInt(currentScroll) + parseInt(currentTop) );
		}
			
	});
}

function mainslideshow()
{
	var $list = $('ul.slide_image');
	var size = $list.children().outerWidth();
	var len =  $list.children().length;
	var speed = 2000;
	var timer = null;
	var auto = true;
	var cnt = 1;

	$list.css('width',len*size);

	if(auto) timer = setInterval(autoSlide, speed);

	$list.children().bind({
		'mouseenter': function(){
			if(!auto) return false;
			clearInterval(timer);
			auto = false;
		},
		'mouseleave': function(){
			timer = setInterval(autoSlide, speed);
			auto = true;
		}
	})

	$('.thum').children().bind({
		'click': function(){
			var idx = $('.thum').children().index(this);
			cnt = idx;
			autoSlide();
			return false;
		},
		'mouseenter': function(){
			if(!auto) return false;
			clearInterval(timer);
			auto = false;
		},
		'mouseleave': function(){
			timer = setInterval(autoSlide, speed);
			auto = true;
		}
	});		

	function autoSlide(){
		if(cnt>len-1){
			cnt = 0;
		}

		$list.animate({'left': -(cnt*size)+'px' },'normal');

		var source2 = $('.thum').children().find('img').attr('src').replace('_on.png','.png');
		$('.thum').children().find('img').attr('src',source2);

		var source = $('.thum').children().find('img').attr('src').replace('.png','_on.png');
		$('.thum').children().eq(cnt).find('img').attr('src',source);

		cnt++;
	}
}

function tabChange()
{
	$('ul.tab').find('li').bind({
		'click': function(){
			var idx = $('ul.tab').find('li').index(this);
			cnt = idx;
			$('ul.tab').find('li').removeClass('on');
			$('ul.tabcont').find('li').removeClass('on');
			$('ul.tab').find('li').eq(idx).addClass('on');
			$('ul.tabcont').find('li').eq(idx).addClass('on');
			$(".tabcont").children(".on").children(".map_area").children("iframe").get(0).contentDocument.location.reload();
			return false;
		}
	});	
	
	$('.location .option').find('.default').bind({
		'click': function(){
			$('ul.tabcont .map_area').find('img').show();
			$('ul.tabcont .map_area').find('.iframemap').hide();
			$(this).addClass('on');
			$('.location .option').find('.view_gmap').removeClass('on');
		}
	});	
	$('.location .option').find('.view_gmap').bind({
		'click': function(){
			$('ul.tabcont .map_area').find('img').hide();
			$('ul.tabcont .map_area').find('.iframemap').show();
			$(this).addClass('on');
			$('.location .option').find('.default').removeClass('on');
			$(".tabcont").children(".on").children(".map_area").children("iframe").get(0).contentDocument.location.reload();
		}
	});
		
}


$(document).ready(function () { 
	 animationHeader();	
	 globalNetwort();
	 animationLnb();
	 if($('#slideshow').length>0) 
	 { 
		mainslideshow();
	 } 
	 tabChange();
	
	var img_btn_go = $('.btn_go').find('img'); 
	img_btn_go.children().bind({		
		'mouseover': function(){
			var effect_btn_go = img_btn_go.attr('src').replace("/btn_go.png","/btn_go_hover.png"); 			
			img_btn_go.attr('src', effect_btn_go );
		},
		'mouseout': function(){
			var org = img_btn_go.attr('src').replace("/btn_go_hover.png","/btn_go.png"); 	
			img_btn_go.attr('src', org );
		}
	});		

});

function menusetOn() {
	var currentPage = document.location.href;
	console.log(currentPage);
	
	var target;

	$("#side_nav li").removeClass("on");
	if(currentPage.indexOf("view/companyOverview/companyInformation")!=-1) {
		target = $("#submenu_info");
	}else if(currentPage.indexOf("view/companyOverview/companyProfile")!=-1) {
		target = $("#submenu_profile");
	}else if(currentPage.indexOf("view/companyOverview/companyChart")!=-1) {
		target = $("#submenu_chart");
	}else if(currentPage.indexOf("view/companyOverview/companyNetwork")!=-1) {
		target = $("#submenu_network");
	}else if(currentPage.indexOf("view/companyOverview/companyLocation")!=-1) {
		target = $("#submenu_location");
	}else if(currentPage.indexOf("view/service/serviceAirFreight")!=-1) {
		target = $("#submenu_air");
	}else if(currentPage.indexOf("view/service/serviceSeaFreight")!=-1) {
		target = $("#submenu_sea");
	}else if(currentPage.indexOf("view/service/serviceSupply")!=-1) {
		target = $("#submenu_manage");
	}else if(currentPage.indexOf("view/service/serviceExpress")!=-1) {
		target = $("#submenu_service");
	}
	
	target.addClass("on");
	
	
//	$(".gnb>li").removeClass("on");
//	if(currentPage.indexOf("view/companyOverview")!=-1) {
//		$("#companyOverviewLi").addClass("on");
//	}else if(currentPage.indexOf("view/service")!=-1) {
//		$("#serviceLi").addClass("on");
//	}else if(currentPage.indexOf("view/contact")!=-1) {
//		$("#contactLi").addClass("on");
//	}
	
}



