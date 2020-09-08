let game;

let gameOptions = {
    
    gameDisplayWidth: 1337,
    playerGravity: 0,
    
    
    playerStartPosition: 200,
    scoreMulti: 1,
    clickGameLength: 4
}

import logInForm from "./logInForm.js"
let logIn = new logInForm()
logIn.signInFormListener()

import UnderWaterGame from "./underwatergame.js";
import { startScreen, transitionScreen, endScreen } from "./gameScreens.js"

export function gameStart(playerId) {
    let gameConfig = {
        type: Phaser.AUTO,
        width: gameOptions.gameDisplayWidth,
        height: 690,
        scene: [startScreen, transitionScreen, UnderWaterGame, endScreen],
        backgroundColor: 0x4A5A7A,
        physics: {
            default: "arcade"
        },
    }

    game = new Phaser.Game(gameConfig)
    game.gameOptions = gameOptions
    game.playerId = playerId
    window.focus();
    resize();
    window.addEventListener("resize", resize, false);
}

export function resize(){
    let canvas = document.querySelector("canvas");
    let windowWidth = window.innerWidth;
    let windowHeight = window.innerHeight;
    let windowRatio = windowWidth / windowHeight;
    let gameRatio = game.config.width / game.config.height;
    if(windowRatio < gameRatio){
        canvas.style.width = windowWidth + "px";
        canvas.style.height = (windowWidth / gameRatio) + "px";
    }
    else{
        canvas.style.width = (windowHeight * gameRatio) + "px";
        canvas.style.height = windowHeight + "px";
    }
}