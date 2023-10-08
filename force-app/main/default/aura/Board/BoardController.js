({
    doInit : function(component, event, helper) {
        const words = helper.getWords(6);
        component.set("v.words", words);

        const winWord = helper.getWinWord(words);
        component.set("v.winWord", winWord);

        console.log(winWord+'-----'+words);
    }
})
