import { gameUrl } from './urls.js' 

// this is the bulk of the auto-runnergame written in phaser 3
class UnderWaterGame extends Phaser.Scene{
    constructor() {
        super("UnderWaterGame")
        this.addedGround
        this.clickScore
        this.moveSound;
        this.deathSound;

    }

}

export default UnderWaterGame