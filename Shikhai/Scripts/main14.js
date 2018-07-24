/* --------------------------------------
		CUSTOM FUNCTION WRITE HERE
-------------------------------------- */
(function($){
	var animate_to = function(selector){
		$('html,body').animate({scrollTop:($(selector).offset().top-50)+'px'},500);
	};
	$(document).ready(function(){
		/*$('.example .menu .browse')
		  .popup({
		    inline     : true,
		    hoverable  : true,
		    position   : 'bottom left',
		    delay: {
		      show: 300,
		      hide: 800
		    }
		  })
		;*/
		$('.ui.accordion').accordion();
		$( '.homepage_slider' ).cycle();
		var image_section_hei = $('.home_page_header_image_section').outerHeight();
		var header_hei = $('#tg-header').outerHeight();
		var win_hei = $(window).height();
		if(win_hei > (image_section_hei+header_hei)){
			$('.home_page_header_image_section').height(win_hei-header_hei);
			$('.home_page_header_image_section .homepage_slider img').height(win_hei-header_hei);
		}

		$('.ui.checkbox').checkbox();
		$(".searchable_select").chosen();
		$('.ui.form.do_login_form_wrapper')
		.form({
			fields: {
				email: ['empty'],
				password: ['empty','maxLength[20]']
			}
		});
		$('body').on('click','.bookmark_this',function(){
			var t = $(this);
			var tutor_id = t.attr('data-id');
			if(tutor_id>0){
				$.ajax({
					type: "POST",
					url: base_name+'/bookmark-tutor',
					data: {'tutor_id':tutor_id,'_token':$('#token').val()},
						success: function(data){
							if(data.success == true){
								if(data.is_loggedin == true){
									if(data.status == 'added'){
										t.addClass('bookmarked');
										t.find('span').html('Bookmarked');
									}else if(data.status == 'removed'){
										t.removeClass('bookmarked');
										t.find('span').html('Bookmark');

									}
								}else{
									$('.user_account.first login').trigger('click');
								}
							}else{
								if(data.is_loggedin == false){
									t.addClass('login_before_bookmark');
									$('.user_account .load_signin_overlay').trigger('click');
								}	
							}
						}
				});
			}
			
		});
		$('body').on('click','.close_notify_wrapper',function(){
			
			$.ajax({
				type: "POST",
				url: base_name+'/close-notify-bar',
				data: {'_token':$('#token').val()},
					success: function(data){
						if(data.success == true){
							$('.beta_notify_wrapper').remove();
						}
					}
			});
			
		});
		
		$('body').on('click','.load_signup_login_overlay',function(){
			$('#signup_login_select_overlay').modal('show');
			return false;
		});
		$('body').on('click','.load_forget_password_overlay',function(){
			$('#signin_overlay_modal').modal('hide');
			setTimeout(function(){
				$('#forget_password_overlay').modal('show');																																																																									
			},500);
			return false;
		});
		$('body').on('click','.load_sighnup_choice_modal',function(){
			$('#signup_select_overlay').modal('show');
		});
		$('body').on('click','.show_hidden_subjects',function(){
			$(this).closest('ul').find('li').show();
			$(this).remove();
		});
		$('body').on('click','.show_hidden_others',function(){
			$(this).closest('ul').find('li').show();
			$(this).remove();
		});
		$('.searchable_subjects_multiple').chosen();
		$('.searchable_grades_profile').chosen();
		$('body').on('click','.tutor_signup',function(){
			$('#signup_select_overlay').modal('hide');
			setTimeout(function(){
				$('#tutor_signup_overlay').modal('show');																																																																									
				setTimeout(function(){
					$('.searchable_subjects').chosen();
					$('.searchable_grades').chosen();
				},800);
			},500);
		});


		$('body').on('click','.student_signup',function(){
			$('#signup_login_select_overlay').modal('hide');
			$('#signup_select_overlay').modal('hide');
			setTimeout(function(){
				$('#student_signup_overlay').modal('show');																																																																									
			},500);
		});
		$('body').on('click','.load_signin_overlay',function(){
			$('#signup_login_select_overlay').modal('hide');
			setTimeout(function(){
				$('#signin_overlay_modal').modal('show');
			},500);
		});
		/* forget password  */
		$('.ui.form.forget_password').form({
			fields: {
				email: ['empty','email'],
				
			}
		});
		$('body').on('submit','.ui.form.forget_password',function(){
			var frm = $(this);
			frm.addClass('loading'); 
			$('.forget_password_error_message').addClass('hidden');
			var params = frm.serialize();
			var xhr = $.ajax({
				type: "POST",
				url: frm.attr('action'),
				data: params,
					success: function(data){
						frm.removeClass('loading');
						if(data.success == true){
							$('.forget_password_error_message').addClass('hidden').html('');
							$('.forget_password_success_message').removeClass('hidden').html(data.msg);
							setTimeout(function(){
							 	location.reload(); 
							},5000);

							
						}else{
							$('.forget_password_success_message').addClass('hidden').html('');
							$('.forget_password_error_message').removeClass('hidden').html(data.msg);
						}
					},
					error:function(){
						$('.forget_password_error_message').removeClass('hidden').html('Some problem has been occured. Please try again later.');

					}
			});
			return false;
		});
		/* forget password  */
		$('.ui.form.reset_password').form({
			fields: {
				password: ['empty'],
				confirm_password: ['empty','match[password]'],
			}
		});
		$('body').on('submit','.ui.form.reset_password',function(){
			var frm = $(this);
			frm.addClass('loading'); 
			$('resetpassword_error_message').addClass('hidden');
			var params = frm.serialize();
			var xhr = $.ajax({
				type: "POST",
				url: frm.attr('action'),
				data: params,
					success: function(data){
						frm.removeClass('loading');
						if(data.success == true){
							$('.reset_password_error_message').addClass('hidden').html('');
							$('.reset_password_success_message').removeClass('hidden').html(data.msg);
							setTimeout(function(){
							 	location.reload(); 
							},5000);

							
						}else{
							$('.reset_password_success_message').addClass('hidden').html('');
							$('.reset_password_error_message').removeClass('hidden').html(data.msg);
						}
					},
					error:function(){
						$('.reset_password_error_message').removeClass('hidden').html('Some problem has been occured. Please try again later.');

					}
			});
			return false;
		});
		/* login form validation */
		$('body').on('submit','.do_login_form_wrapper',function(){
			var frm = $(this);
			frm.addClass('loading'); 
			$('.login_error_message').addClass('hidden');
			var params = frm.serialize();
			var xhr = $.ajax({
				type: "POST",
				url: base_name+'/user/login',
				data: params,
					success: function(data){
						frm.removeClass('loading');
						if(data.success == true){
							if($('.tutor_detail_button').length > 0){
								window.location = $('.tutor_detail_button').attr('href');
							}else if($('.login_before_bookmark').length > 0){
								location.reload(); 
							}else{
								window.location = base_name+'/'+data.url;
								
							}

							// if(data.type == 1){
							// 	location.reload(); 
							// }else if(data.type == 2 ){
							 	//window.location = base_name+'/'+data.url;
							// }
						}else{
							$('.login_error_message').removeClass('hidden').html(data.msg);
						}
					},
					error:function(){
						$('.login_error_message').removeClass('hidden').html('Either your is not active or blocked. Please contact site administrator.');
                         frm.removeClass('loading'); 
					}
			});
			return false;
		});
	});
	$('.ui.form.contactus_form').form({
		fields: {
			name: ['empty'],
			email: ['empty','email'],
			subject: ['empty'],
			message: ['empty'],
			
		}
	});
	

		/* register form validation*/
		$('body').on('click','.tutor_accept_appointment',function(){
			var t = $(this);
			alertify.confirm("","Do you want to accept?",
			  function(){
			    	window.location = t.attr('href');
			  },
			  function(){
			    
			  });
			return false;

		});
		$('body').on('click','.accept_appointment_via_chat',function(){
			var t = $(this);
			alertify.confirm("","Do you want to accept?",
			  function(){
			    	var url = base_name+(t.attr('data-url'));
			  	$.ajax({
				type: "POST",
				url: url,
				data: {'_token':$('#token').val()},
					success: function(data){
						//frm.removeClass('loading');
						if(data.success == true){
							location.reload();
							t.closest('.chat_item').find('.accept_appointment').removeClass('hidden');
							t.closest('.chat_item').find('.reject_appointment_via_chat,.accept_appointment_via_chat').remove();

						}
					},
					error:function(){
						$('.login_error_message').removeClass('hidden').html(data.msg);

					}
				});
			  },
			  function(){
			    
			  });
			return false;
		});
		$('body').on('click','.reject_appointment_via_chat',function(){
			var t = $(this);
			alertify.confirm("","Do you really want to reject ?",
			  function(){
			    	var url = base_name+(t.attr('data-url'));
			  	$.ajax({
				type: "POST",
				url: url,
				data: {'_token':$('#token').val()},
					success: function(data){
						//frm.removeClass('loading');
						if(data.success == true){
							location.reload();
							t.closest('.chat_item').find('.rejected_appointment').removeClass('hidden');
							t.closest('.chat_item').find('.reject_appointment_via_chat,.accept_appointment_via_chat').remove();
						}
					},
					error:function(){
						$('.login_error_message').removeClass('hidden').html(data.msg);

					}
				});
			  },
			  function(){
			    
			  });
			return false;
		});
		$('body').on('click','.tutor_reject_appointment',function(){
			var t = $(this);
			alertify.confirm("","Do you really want to reject ?",
			  function(){
			    	window.location = t.attr('href');
			  },
			  function(){
			    
			  });
			return false;
		});
		$('body').on('click','.cancel_student_appointment',function(){
			var t = $(this);
			alertify.confirm("","Do you really want to cancel ?",
			  function(){
			    	window.location = t.attr('href');
			  },
			  function(){
			    
			  });
			return false;
		});
		/* register */
		$('.ui.form.do_register_form_wrapper.student_register').form({
			fields: {
				first_name: ['empty','maxLength[20]'],
				last_name: ['empty','maxLength[20]'],
				email: ['empty','email'],
				student_password: ['empty'],
				cpassword: ['match[student_password]'],
				agree_terms: ['checked'],
				
			}
		});
		$('body').on('submit','.do_register_form_wrapper.student_register',function(){
			var frm = $(this);
			var pass = $('.register_pass').val().trim();
			var cpass = $('.register_cpass').val().trim();
			if (pass != cpass) { 
				$('.signup_error_message').removeClass('hidden').html('Password and confirm Password should match.');
				return false;
			}
			frm.addClass('loading'); 
			$('.signup_error_message').addClass('hidden').html('');
			$('.login_error_message').addClass('hidden');
			var params = frm.serialize();
			var xhr = $.ajax({
				type: "POST",
				url: $(this).attr('action'),
				data: params,
				success: function(data){
					frm.removeClass('loading');
					if(data.success == true){
						// if(data.type == 1){
						// 	window.location = base_name+'/';
						// }else if(data.type == 2 ){
						 	//window.location = base_name+'/'+data.url;
						$('.signup_success_message').removeClass('hidden').html('We have sent you an email please activate your account.');
						$('.signup_error_message').addClass('hidden').html('');
						setTimeout(function(){
							window.location = base_name;
						},5000);
						// }
					}else{
						$('.signup_success_message').addClass('hidden').html('');
						$('.signup_error_message').removeClass('hidden').html(data.msg);
						
					}
				},
				error: function(){
					frm.removeClass('loading');
					$('.register_error_message').removeClass('hidden').html('Some error occured. Please try again later.');
					
				}
			});
			return false;
		});
		$('.ui.form.do_register_form_wrapper.tutor_register').form({
			fields: {
				first_name: ['empty','maxLength[20]'],
				last_name: ['empty','maxLength[20]'],
				email: ['empty','email'],
				password1: ['empty'],
				cpassword1: ['empty','match[password1]'],
				dob: ['empty'],
				gender: ['empty'],
				agree_terms: ['checked'],
				
			}
		});
		/* register form  */
		$('.do_register_form_wrapper.tutor_register').ajaxForm({
		type:'POST',
		beforeSubmit:function(arr, $form, options){
			
			var frm = $('.do_register_form_wrapper.tutor_register');
			
				frm.addClass('loading'); 
				$('.signup_error_message').addClass('hidden').html('');
				$('.login_error_message').addClass('hidden');

				$('.ui.modal .progress').removeClass('hidden');
				frm.addClass('loading');
			
		},
		uploadProgress:function(event, position, total, percentage) {
			//$('.ui.modal .progress .bar').css('width',percentage+'%');
		},

		success: function(data){
			var frm = $('.do_register_form_wrapper.tutor_register');
			frm.removeClass('loading');
			if(data.success == true){
				$('.signup_success_message').removeClass('hidden').html('You will get an email once admin will approve your account.');
				$('.signup_error_message').addClass('hidden').html('');
				setTimeout(function(){
					window.location = data.url;
				},3000);
				
			}else{
				$('.signup_success_message').addClass('hidden').html('');
				$('.signup_error_message').removeClass('hidden').html(data.msg);
				
			}
			
		},
		error:function(){
			$('.ui.modal .progress').addClass('hidden');
			$('.ui.form.do_register_form_wrapper.tutor_register').addClass('loading');
			$('.signup_error_message').html('Some problem occured. Please try again later').removeClass('hidden');
		},
		
		
	});
		
	/* register */

	/* update tutor profile */
	var edit_user_profile_form = $('.ui.form.edit_user_profile_form')
			.form({
				fields: {
					first_name: ['empty','maxLength[15]'],
					last_name: ['empty','maxLength[15]'],
					//email: ['empty','email'],	
					gender: ['empty'],	
					bio: ['empty'],	
					city: ['empty'],
					province: ['empty'],
					country: ['empty'],
					postal: ['empty'],
					dob: ['empty','minLength[4]','maxLength[4]'],
					education: ['empty'],	
					undergrad_school: ['empty'],	
					undergrad_major: ['empty'],	
					hourly_rate: ['empty','integer'],	
					
				}
			});

	$('body').on('submit','.form.edit_user_profile_form',function(){
		var data = edit_user_profile_form.serialize();
		edit_user_profile_form.addClass('loading');
		$('.ui.error.message.semantic').html('');
		var xhr = $.ajax({
			type: "POST",
			url: base_name+'/tutor/profile/edit',
			data: data,
				success: function(data){
					edit_user_profile_form.removeClass('loading');
					if(data.success == true){
						$('.edit_profile_error_message').addClass('hidden');
						$('.edit_profile_success_message').html(data.msg).removeClass('hidden');
						location.reload(); 
					}else{
						$('.edit_profile_success_message').addClass('hidden');
						$('.edit_profile_error_message').html(data.msg).removeClass('hidden');
						
					}
				},
				error: function(){
					edit_user_profile_form.removeClass('loading');
				}
		});
		return false;
		
	});
	/* update tutor profile */
	/* book package  */
	$('body').on('submit','.form.student_book_package_form',function(){
		var student_book_package_form = $(this);
		var data = student_book_package_form.serialize();
		student_book_package_form.addClass('loading');
		var xhr = $.ajax({
			type: "POST",
			url: $(this).attr('action'),
			data: data,
				success: function(data){
					student_book_package_form.removeClass('loading');
					console.log(data);
					if(data.success == true){
						$('.book_package_error_message').addClass('hidden');
						$('.edit_profile_success_message').html(data.msg).removeClass('hidden');
						window.location = base_name+'/'+data.url;
					}else{
						$('.edit_profile_success_message').addClass('hidden');
						$('.book_package_error_message').html(data.msg).removeClass('hidden');
						
					}
				},
				error: function(){
					student_book_package_form.removeClass('loading');
				}
		});
		return false;
	});
	/* book package  */
	/* update student profile */
	var edit_student_profile_form = $('.ui.form.edit_student_profile_form')
			.form({
				fields: {
					first_name: ['empty','maxLength[15]'],
					last_name: ['empty','maxLength[15]'],
					//email: ['empty','email'],
					
					
				}
			});

	$('body').on('submit','.form.edit_student_profile_form',function(){
		var data = edit_student_profile_form.serialize();
		edit_student_profile_form.addClass('loading');
		var xhr = $.ajax({
			type: "POST",
			url: base_name+'/student/profile/edit',
			data: data,
				success: function(data){
					edit_student_profile_form.removeClass('loading');
					console.log(data);
					if(data.success == true){
						$('.edit_profile_error_message').addClass('hidden');
						$('.edit_profile_success_message').html(data.msg).removeClass('hidden');
						location.reload(); 
					}else{
						$('.edit_profile_success_message').addClass('hidden');
						$('.edit_profile_error_message').html(data.msg).removeClass('hidden');
						
					}
				},
				error: function(){
					edit_student_profile_form.removeClass('loading');
				}
		});
		return false;
		
	});
	/* update tutor profile */
	/* update tutor availability */
	$('body').on('submit','.form.edit_tutor_availability',function(){
		var edit_tutor_availability  = $(this);
		var data = edit_tutor_availability.serialize();
		edit_tutor_availability.addClass('loading');
		var xhr = $.ajax({
			type: "POST",
			url: base_name+'/tutor/profile/schedule/update',
			data: data,
				success: function(data){
					edit_tutor_availability.removeClass('loading');
					console.log(data);
					if(data.success == true){
						$('.edit_profile_error_message').addClass('hidden');
						$('.edit_profile_success_message').html(data.msg).removeClass('hidden');
						location.reload(); 
					}else{
						$('.edit_profile_success_message').addClass('hidden');
						$('.edit_profile_error_message').html(data.msg).removeClass('hidden');
						
					}
				},
				error: function(){
					edit_tutor_availability.removeClass('loading');
				}
		});
		return false;
		
	});
	/* update tutor availability */
	/* update tutor availability */
	$('.ui.form.update_tutor_subjects_form')
		.form({
			fields: {
				package: ['empty'],
				tutor_id: ['empty']
			}
		});
	$('body').on('submit','.form.update_tutor_subjects_form',function(){
		var update_tutor_subjects_form  = $(this);
		var data = update_tutor_subjects_form.serialize();
		update_tutor_subjects_form.addClass('loading');
		var xhr = $.ajax({
			type: "POST",
			url: $(this).attr('action'),
			data: data,
				success: function(data){
					update_tutor_subjects_form.removeClass('loading');
					console.log(data);
					if(data.success == true){
						$('.update_tutor_subject_error_message').addClass('hidden');
						$('.update_tutor_subject_success_message').html(data.msg).removeClass('hidden');
						window.location = base_name+'/'+data.url;
					}else{
						$('.update_tutor_subject_success_message').addClass('hidden');
						$('.update_tutor_subject_error_message').html(data.msg).removeClass('hidden');
						
					}
				},
				error: function(){
					update_tutor_subjects_form.removeClass('loading');
				}
		});
		return false;
		
	});
	/* update tutor availability */
	/* create new booking */
	$('.ui.form.add_new_booking_form')
		.form({
			fields: {
				date_time: ['empty'],
				time: ['empty'],
				hours: ['empty']
			}
		});
	$('body').on('click','.get_my_current_location',function(){
		if (navigator.geolocation) {
			var t = $(this);
	          navigator.geolocation.getCurrentPosition(function(position) {
	            
	          
	          var c = position.coords.latitude,
                        d = position.coords.longitude;
	          var e = new google.maps.LatLng(c, d),
                        f = new google.maps.Geocoder;
                    f.geocode({
                        latLng: e
                    }, function(b, c) {
                        t.closest('form').find('input.get_my_current_location_field').val(b[0].formatted_address);
                    })
	          //autocomplete.setBounds(circle.getBounds());
	      });
	      }
	});
	$('body').on('submit','.form.add_new_booking_form',function(){
		var add_new_booking_form  = $(this);
		var data = add_new_booking_form.serialize();
		add_new_booking_form.addClass('loading');
		var xhr = $.ajax({
			type: "POST",
			url: $(this).attr('action'),
			data: data,
				success: function(data){
					add_new_booking_form.removeClass('loading');
					console.log(data);
					if(data.success == true){
						if(data.chat == true){
							location.reload();
							/*var chat_wrap = $('.chat_list_wrapper');
							chat_wrap.append(data.content);
							$('#book_appointment_overlay').modal('hide');
							 chat_wrap[0].scrollTop = chat_wrap[0].scrollHeight;*/
						}else{
							$('.update_tutor_subject_error_message').addClass('hidden');
							$('.update_tutor_subject_success_message').html(data.msg).removeClass('hidden');
							window.location = base_name+'/'+data.url;
						}
					}else{
						$('.update_tutor_subject_success_message').addClass('hidden');
						$('.update_tutor_subject_error_message').html(data.msg).removeClass('hidden');
						
					}
				},
				error: function(){
					add_new_booking_form.removeClass('loading');
				}
		});
		return false;
		
	});
	/* create new booking */
	/* create new booking */
	$('.ui.form.add_review_form')
		.form({
			fields: {
				rating: ['empty'],
				message: ['empty']
			}
		});
	$('body').on('submit','.form.add_review_form',function(){
		var add_new_booking_form  = $(this);
		var data = add_new_booking_form.serialize();
		add_new_booking_form.addClass('loading');
		var xhr = $.ajax({
			type: "POST",
			url: $(this).attr('action'),
			data: data,
				success: function(data){
					add_new_booking_form.removeClass('loading');
					console.log(data);
					if(data.success == true){
						$('.add_review_error_message').addClass('hidden');
						$('.add_review_success_message').html(data.msg).removeClass('hidden');
						location.reload(); 
					}else{
						$('.add_review_success_message').addClass('hidden');
						$('.add_review_error_message').html(data.msg).removeClass('hidden');
						
					}
				},
				error: function(){
					add_new_booking_form.removeClass('loading');
				}
		});
		return false;
		
	});
	$('body').on('click','.delete_profile_pic_btn',function(){
		var t  = $(this);
		$.ajax({
			type: "POST",
			url: base_name+'/tutor/remove-profile-pic',
			data: {'_token':$('#token').val()},
				success: function(data){
					if(data.success == true){
						location.reload(); 
					}else{
						$('.edit_profile_success_message').addClass('hidden');
						$('.edit_profile_error_message').html(data.msg).removeClass('hidden');
						
					}
				},
				error: function(){
					$('.edit_profile_error_message').html('Some problem occured please reload your page and try again.').removeClass('hidden');
				}
		});
		return false;
		
	});
	/* create new booking */
	/* update tutor image */
	$('body').on('click','.edit_profile_btn',function(){
		$('.user_profile_image_field').trigger('click');
	});
	$('body').on('change','.user_profile_image_field',function(){
		$('.edit_user_profile_image').submit();
	});
	$('.edit_user_profile_image').ajaxForm({
		type:'POST',
		beforeSubmit:function(arr, $form, options){
			$('.ui.modal .progress').removeClass('hidden');
			$('.ui.form.edit_user_profile_form').addClass('loading');
		},
		uploadProgress:function(event, position, total, percentage) {
			$('.ui.modal .progress .bar').css('width',percentage+'%');
		},

		success: function(data){
			if(data.success == true){
				$('.edit_profile_error_message').addClass('hidden');
				$('.edit_profile_success_message').html(data.msg).removeClass('hidden');
				$('img.my_profile_image').attr('src',data.image_url);
			}else{
				$('.edit_profile_success_message').addClass('hidden');
				$('.edit_profile_error_message').html(data.msg).removeClass('hidden');
			}
			$('.ui.modal .progress').addClass('hidden');
			$('.ui.form.edit_user_profile_form').removeClass('loading');
			
		},
		error:function(){
			$('.ui.modal .progress').addClass('hidden');
			$('.ui.form.edit_user_profile_form').removeClass('loading');
			$('.edit_profile_success_message').addClass('hidden');
			$('.edit_profile_error_message').html('Some problem occured. Please try again later').removeClass('hidden');
		},
		resetForm: true,
		clearForm:true
	});
	/* update tutor image */
	/* update student image */
	$('body').on('change','.user_profile_image_field',function(){
		$('.edit_user_profile_image').submit();
	});
	$('.edit_student_profile_image').ajaxForm({
		type:'POST',
		beforeSubmit:function(arr, $form, options){
			$('.ui.modal .progress').removeClass('hidden');
			$('.ui.form.edit_user_profile_form').addClass('loading');
		},
		uploadProgress:function(event, position, total, percentage) {
			$('.ui.modal .progress .bar').css('width',percentage+'%');
		},

		success: function(data){
			if(data.success == true){
				$('.edit_profile_error_message').addClass('hidden');
				$('.edit_profile_success_message').html(data.msg).removeClass('hidden');
				$('img.my_profile_image').attr('src',data.image_url);
			}else{
				$('.edit_profile_success_message').addClass('hidden');
				$('.edit_profile_error_message').html(data.msg).removeClass('hidden');
			}
			$('.ui.modal .progress').addClass('hidden');
			$('.ui.form.edit_user_profile_form').removeClass('loading');
			
		},
		error:function(){
			$('.ui.modal .progress').addClass('hidden');
			$('.ui.form.edit_user_profile_form').removeClass('loading');
			$('.edit_profile_success_message').addClass('hidden');
			$('.edit_profile_error_message').html('Some problem occured. Please try again later').removeClass('hidden');
		},
		resetForm: true,
		clearForm:true
	});
	/* update tutor image */
	/* appointment book buttons */
	$('body').on('click','.book_appointment_button',function(){
		$('.book_appointment_button').removeClass('active');
		$(this).addClass('active');
		var type = $(this).attr('data-type');
		$('.appointment_package_form').addClass('hidden');
		$('.'+type+'_form').removeClass('hidden');
	});
	/* appointment book buttons */


	// $('.city_filter,.subject_filter').each(function(){
	// 	$(this).change(function(){
	// 		var vals = $('.tutor_search_filter').serialize();
	// 		var url = base_name + '/tutors/?'+vals;
	// 		window.location = url;
	// 	});
	// });
	$('body').on('change','.tutor_list_select_package',function(){
		if($(this).val() !='')
			$(this).closest('form').submit();
	});
	
	$('body').on('click','.lazy_loading_pagination a',function(){
		var frm = $('.lazy_loading_pagination');
		var url  = $(this).attr('href');
		if(getParameterByName('city') !=null){
			url = url+'&city='+getParameterByName('city');
		}
		if(getParameterByName('subject')!=null){
			url = url+'&subject='+getParameterByName('subject');
		}
		frm.addClass('loading');
		 $.ajax({
			type: "POST",
			url: url ,
			data: {'_token':$('#token').val()},
				success: function(data){
					frm.removeClass('loading');
					if(data.success == true){
						$('.tutors_listing_wrap .lazy_loading_pagination').before(data.content);
					
					}
				},
				error: function(){
					frm.removeClass('loading');
				}
		});
		return false;
	});
	$('body').on('click','.tutor_subjects_accordian',function(){
		$(this).next().slideToggle();
	});
	$('body').on('click','.tutor_add_review',function(){
		animate_to($('.tutor_add_review_section'));
	});
	$('body').on('click','.load_more_tutor_button',function(){
		var tt=$(this);
		if($('.lazy_loading_pagination li.active').next().length>0){
                      		var t = $('.lazy_loading_pagination li.active');
                        		if(t.next().find('a').attr('rel') != 'next'){
                        			t.next().find('a').trigger('click');
	                      			t.removeClass('active');
	                        		t.next().addClass('active');

                        		}else{
                        			$('.lazy_loading_pagination').before('<div class="tg-tutor"><div class="alert alert-warning">No more results found.</div></div>');
                        			tt.remove();
                        			$('body .load_more_tutor_button').remove();
                        		}
                        	}
	});
	
	$(window).scroll(function(){
		//var hei = ($('#tg-header').height()+$('#tg-innerbanner').height()+$('#tg-main').height());
		

                      if  ($(window).scrollTop() == ($(document).height() - $(window).height())){  
                        	if($('.lazy_loading_pagination li.active').next().length>0){
                      		var t = $('.lazy_loading_pagination li.active');
                        		if(t.next().find('a').attr('rel') != 'next'){
                        			t.next().find('a').trigger('click');
	                      			t.removeClass('active');
	                        		t.next().addClass('active');
                        		}else{
                      				
                        			$('.load_more_tutor_button').remove();
                        		}
                        	}
                      }  
              }); 
})(jQuery);
function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}
jQuery(document).ready(function() {
	"use strict";
	/* -------------------------------------
			COLLAPSE MENU SMALL DEVICES
	-------------------------------------- */
	function collapseMenu(){
		$('.tg-navigation ul li.tg-hasdropdown').prepend('<span class="tg-dropdowarrow"><i class="fa fa-angle-down"></i></span>');
		$('.tg-navigation ul li.tg-hasdropdown span').on('click', function() {
			//$(this).next().next().slideToggle(300);
		});
        $('.tg-navigation ul li.tg-hasdropdown.have_cap').on('click', function() {
        	
			$(this).find('.tg-dropdownmenu').slideToggle(300);
		});

		
	}
	collapseMenu();
	/* --------------------------------------
			NEWS TICKERS
	-------------------------------------- */
	jQuery("#tg-newsticker").simplyScroll({
		auto : true,
		pauseOnTouch : true,
	});
	/* --------------------------------------
			COUNTER
	-------------------------------------- */
	try {
		jQuery('.tg-counter').appear(function () {
			jQuery('.tg-counter > h2 > span').countTo()
		});
	} catch (err) {}
	/* --------------------------------------
			TUITION CENTER SLIDER
	-------------------------------------- */
	jQuery("#tg-tuitioncentersslider").owlCarousel({
		autoPlay : false,
		slideSpeed : 300,
		navigation : true,
		pagination : false,
		navigationText: [
			"<span class='tg-btnroundprev'><i class='fa fa-angle-left'></i></span>",
			"<span class='tg-btnroundnext'><i class='fa fa-angle-right'></i></span>"
		],
		itemsCustom : [
			[0, 1],
			[481, 2],
			[991, 2],
			[1200, 4],
		],
	});
	/* --------------------------------------
			BOOTSTRAP TOOLTIP
	-------------------------------------- */
	jQuery('.tg-tooltip').tooltip();
	/* -------------------------------------
			HOME SLIDER VERSION THREE
	-------------------------------------- */
	function reviewSlider(){
		var studentreviewsslider = jQuery("#tg-studentreviewsslider");
		//var sync2 = jQuery("#tg-reviewerdpslider");
		studentreviewsslider.owlCarousel({
			autoplay:true,
			autoplayTimeout:1000,
			singleItem : true,
			slideSpeed : 1000,
			pagination:true,
			responsiveRefreshRate : 200,
		});
		
		/*function syncPosition(el){
			var current = this.currentItem;
			jQuery("#tg-reviewerdpslider")
			.find(".owl-item")
			.removeClass("tg-active")
			.eq(current)
			.addClass("tg-active");
			if(jQuery("#tg-reviewerdpslider").data("owlCarousel") !== undefined){
				center(current);
			}
		}*/
		/*jQuery("#tg-reviewerdpslider").on("click", ".owl-item", function(e){
			e.preventDefault();
			var number = jQuery(this).data("owlItem");
			sync1.trigger("owl.goTo",number);
		});*/
		/*function center(number){
			var sync2visible = sync2.data("owlCarousel").owl.visibleItems;
			var num = number;
			var found = false;
			for(var i in sync2visible){
				if(num === sync2visible[i]){
					var found = true;
				}
			}
			if(found===false){
				if(num>sync2visible[sync2visible.length-1]){
				sync2.trigger("owl.goTo", num - sync2visible.length+2);
				}else{
					if(num - 1 === -1){
						num = 0;
					}
					sync2.trigger("owl.goTo", num);
				}
			} else if(num === sync2visible[sync2visible.length-1]){
				sync2.trigger("owl.goTo", sync2visible[1]);
			} else if(num === sync2visible[0]){
				sync2.trigger("owl.goTo", num-1);
			}
		}*/
	}
	//reviewSlider();
	jQuery("#tg-studentreviewsslider").owlCarousel({
			autoPlay:true,
			singleItem : true,
			slideSpeed : 1000,
			pagination:true,
			responsiveRefreshRate : 200,
		});
	/* -------------------------------------
			BRANDS SLIDER
	-------------------------------------- */
	jQuery("#tg-brandsslider").owlCarousel({
		slideSpeed : 300,
		singleItem: true,
		pagination: true,
	});
	jQuery(".tg-latestnews").owlCarousel({
		slideSpeed : 300,
		singleItem: false,
		items:2,
		pagination: true,
	});
	/* -------------------------------------
			CHECKBOX SCROLL
	-------------------------------------- */
	jQuery(".tg-filterscrollbar").mCustomScrollbar({
		axis:"y",
	});
	/* -------------------------------------
			FEE RANGE SLIDER
	-------------------------------------- */
	
	
	/* -------------------------------------
			Google Map
	-------------------------------------- */
	// jQuery("#tg-location-map, #tg-addressmap").gmap3({
	// 	marker: {
	// 		address: "1600 Elizabeth St, Melbourne, Victoria, Australia",
	// 		options: {
	// 			title: "Robert Frost Elementary School",
	// 			icon: "images/marker.png",
	// 		}
	// 	},
	// 	map: {
	// 		options: {
	// 			zoom: 16,
	// 			scrollwheel: false,
	// 			disableDoubleClickZoom: true,
	// 		}
	// 	}
	// });
	/* -------------------------------------
			PROGRESS BAR
	-------------------------------------- */
	try {
		jQuery('#tg-userskill').appear(function () {
			jQuery('.tg-skillholder').each(function () {
				jQuery(this).find('.tg-skillbar').animate({
					width: jQuery(this).attr('data-percent')
				}, 2500);
			});
		});
	} catch (err) {}
	/* --------------------------------------
			COUNTER
	-------------------------------------- */
	function expireyCounter(){
		var note = jQuery('#note'),
			ts = new Date(2017, 0, 1),
			newYear = true;
		if((new Date()) > ts){
			ts = (new Date()).getTime() + 10*24*60*60*1000;
			newYear = false;
		}
		jQuery('#tg-countdown').countdown({
			timestamp	: ts,
			callback	: function(days, hours, minutes, seconds){
				var message = "";
				message += days + " day" + ( days==1 ? '':'s' ) + ", ";
				message += hours + " hour" + ( hours==1 ? '':'s' ) + ", ";
				message += minutes + " minute" + ( minutes==1 ? '':'s' ) + " and ";
				message += seconds + " second" + ( seconds==1 ? '':'s' ) + " <br />";
				if(newYear){
					message += "left until the new year!";
				}
				else {
					message += "left to 10 days from now!";
				}
				note.html(message);
			}
		});
	}
	expireyCounter();

	/* -------------------------------------
			MULTI SELECT INPUT
	-------------------------------------- */
	jQuery(function() {
		jQuery('.chosen-select').chosen();
		jQuery('.chosen-select-deselect').chosen({ allow_single_deselect: true });
	});
	/* -------------------------------------
			DASHBOARD NAVIGATION
	-------------------------------------- */
	jQuery(".tg-btndashboard").on('click', function() {
		jQuery("#tg-dashboardnav").slideToggle("slow");
		jQuery(".tg-btndashboard").toggleClass("tg-active");
	});
	/* -------------------------------------
			ACADEMICS SETTING
	-------------------------------------- */
	jQuery('.tg-settingcontentarea').each(function(){
		if(jQuery(this).attr('id') == 'tg-academics') {
			jQuery(this).addClass('tg-active');
			jQuery(this).slideDown(400);
		}
	});
	jQuery('.tg-dashboarddepartment a').on( "click", function(e) {
		e.preventDefault();
		var id = jQuery(this).data('related'); 
		jQuery('.tg-dashboarddepartment').removeClass('tg-active');
		jQuery(this).parent().addClass('tg-active');
		jQuery(".tg-settingcontentarea").each(function(){
			jQuery(this).slideUp(400);
			if(jQuery(this).attr('id') == id) {
				jQuery(this).slideDown(400);
			}
		});
	});
});