// jQuery Track 1.0
// Mon April 1 02:37:30 GMT 2013
//
// Copyright 2010 Michael Go. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//
//    1. Redistributions of source code must retain the above
//       copyright notice, this list of conditions and the following
//       disclaimer.
//
//    2. Redistributions in binary form must reproduce the above
//       copyright notice, this list of conditions and the following
//       disclaimer in the documentation and/or other materials
//       provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
// FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
// COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
// LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
// ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

// TESTED ON
//   X Internet Explorer 6
//   X Opera 10.01
//   X Firefox 3.5.8, 3.6.2 (Mac)
//   X Safari 4.0.5 (6531.22.7) (Mac)
//   Google Chrome 26.0.1410.43 (Mac)

(function($){
	$.fn.track = function(config){
		////////////////////////////////////////////////////////////////////////
		// Configurations
		var point_animation = (config && config.point_animation!=undefined) ? config.point_animation : true;
		var arrange_animation = (config && config.arrange_animation!=undefined) ? config.arrange_animation : true;

		////////////////////////////////////////////////////////////////////////
		// Globals
		var track = $(this);
		var meter = $(this).children("#progress").children("#meter");
		var bar = $(this).children("#bar");

		// External exports object
		var extern = {};

		////////////////////////////////////////////////////////////////////////
		// Main entry point
		(function(){
			meter.css('width', '0%');         	
			extern.meter = meter;
			extern.bar = bar;
		})();

		////////////////////////////////////////////////////////////////////////
		// Add points
		extern.add = function(title){
			point = $('<li class="point"><span>'+title+'</span></li>').hide();
			// point.click(function(){
			// 	index = $('.point').index(this);
			// 	track.set_meter(index+1);
			// 	$('.point.selected').removeClass('selected');
			// 	$(this).addClass('selected');
			// });
			bar.append(point);	
			point.show();			
			cleanUp();		
		};

		////////////////////////////////////////////////////////////////////////
		// set meter
		extern.set_meter = function(val)
		{
			set_meter(val);
		}
		function set_meter(val)
		{
			points = bar.children();
			n = points.length;
			width = parseInt(track.css('width').replace("px",""));			
			gap = width / (n+1);
			meter.animate({
				width: (gap*val)+'px'
			}, 1000, 'easeInOutCubic');
		}

		////////////////////////////////////////////////////////////////////////
		// Select a Point
		extern.select = function(index)
		{
			points = bar.children();
			$(bar.children(".point")[index]).toggleClass('selected');
		}

		////////////////////////////////////////////////////////////////////////
		// Clean Up
		function cleanUp() {
			points = bar.children();
			n = points.length;
			width = parseInt(track.css('width').replace("px",""));
			gap = width / (n+1);

			for(i=0 ; i<n ; i++)
			{				
				k = i+1;
				// $(points[i]).animate({
				// 	'left': (k*gap - k*31) +'px'
				// }, 0);

				$(points[i]).css('left', (k*gap - k*31) +'px');					
			}
		};

		return extern;
	}; 
})(jQuery);
