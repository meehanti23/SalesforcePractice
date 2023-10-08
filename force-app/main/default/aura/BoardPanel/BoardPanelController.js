({
    startGame : function(component, event, helper) {
        let gameModeComboBox = component.find("gameMode");

        let selectedValue = gameModeComboBox.get("v.value");

        const selectedMode = component.get("v.selectedMode");

        component.set("v.selectedMode", selectedValue);

        if(selectedMode){
            const boardComp = component.find("boardComp");
            boardComp.startGame();
        }
    },
    reshuffleBoard : function(component, event, helper) {
        console.log('reshuffle board is called');
    }
})
