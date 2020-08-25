document.querySelector("#text").addEventListener('keypress',function(e){
	var key = e.keyCode || e.which;
	if(key==13){
		sendMessage();
	}
});
var know={
       "hello":"Hi there,Welcome to Trust Bank",
       "hi":"Hi,Welcome to Trust Bank",
       "hi there":"Hi,Welcome to Trust Bank",
       "how are you?":"Fine<br>What about you?",
       "how are you":"Fine<br>What about you?",
       "good":"Okay,How can I help you?",
       "sad":"Sorry to hear,How can I help you?",
       "average":"Okay,How can I help you?",
       "fine":"Okay,How can I help you?",
       "better":"Okay,How can I help you?",
       "what is your age?":"I'm a robot.So,I don't have age...",
       "how old are you?":"I'm a robot.So,I don't have age...",
       "what is your age":"I'm a robot.So,I don't have age...",
       "how old are you":"I'm a robot.So,I don't have age...",
       "ok":"How can I help you?",
       "okay":"How can I help you?",
       "i am looking for moratorium":"Okay,Which loan are you looking for apply",
       "i want to apply a moratorium":"Okay,Which loan are you looking for apply",
       "i want  apply a moratorium":"Okay,Which loan are you looking for apply",
       "moratorium":"Okay,Which loan are you looking for apply",
       "car loan":"Okay,Please tell me the reason",
       "car":"Okay,Please tell me the reason",
       "bike loan":"Okay,Please tell me the reason",
       "bike":"Okay,Please tell me the reason",
       "home loan":"Okay,Please tell me the reason",
       "home":"Okay,Please tell me the reason",
       "covid-19":"Okay,Please tell me<br> When do you come back normal situation?",
       "corona virus":"Okay,Please tell me<br> When do you come back normal situation?",
       "corona":"Okay,Please tell me<br> When do you come back normal situation?",
       "i don't know":"Okay,Thank for you attention..!<br>It take two or more days complete the process<br>Be stay home<br>Be safe..!",
       "i do not know":"Okay,Thank for you attention..!<br>It take two or more days complete the process<br>Be stay home<br>Be safe..!",
       "thank you":"Your welcome<br>Be stay home...!",
       "thank you..!":"Your welcome<br>Be stay home...!",
       "thank you!":"Your welcome<br>Be stay home...!",
       "thanks":"Your welcome<br>Be stay home...!",
};
function sendMessage(){
	   var user=$("#text").val();
       var te="I don't understand...!"
       $("#body").append('<span class="msg3">'+user +'</span>');
       var res = user.toLowerCase();
       $("#text").val('');
	   $("#text").focus();
       if(res in know){
            $("#body").append('<span class="msg1">'+ know[res] +'</span>');
    }         
	else{
		$("#body").append('<span class="msg1">'+ te +'</span>');
	}
	jQuery('#body').scrollTop(jQuery('#body')[0].scrollHeight);
}
