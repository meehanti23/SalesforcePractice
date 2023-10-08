({
    getWords : function(count) {
        if(count > 100) return;
        let wordsArray = [
            "apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew",
            "kiwi", "lemon", "mango", "nectarine", "orange", "peach", "pear", "quince", "raspberry",
            "strawberry", "tangerine", "watermelon", "blueberry", "blackberry", "cranberry", "boysenberry",
            "pineapple", "apricot", "plum", "pomegranate", "grapefruit", "lime", "coconut", "guava", "apartment", "house", 
            "car", "bicycle", "coffee", "tea", "summer", "winter", "ocean", "river", "sun", "moon", "computer", "smartphone",
            "book", "magazine", "pizza", "hamburger", "dog", "cat", "music", "movie", "shoes", "sandals"
          ];

          wordsArray = this.randomizeArray(wordsArray);

          return wordsArray.slice(0, count);
    },

    randomizeArray : function(arr) {
        const randomArr = arr;

        for (let i = randomArr.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * i);
            const temp = randomArr[i];
            randomArr[i] = randomArr[j];
            randomArr[j] = temp;
        }
        return randomArr;
    },

    getWinWord : function (arr) {
        const randomIndex = Math.floor(Math.random() * arr.length);
        return arr[randomIndex];
    },

    disableBoard : function(component, event, helper) {
        component.set("v.boardDisabled", true);
    },

    enableBoard : function(component) {
        component.set("v.boardDisabled", false);
    }
})
