const players = ["Yamila", "Jessy", "Geoffrey", "Sabine", "Daryl", "Fabrice", "Edwina"]
const theOne = (players, notThisOne) => {
    if (notThisOne) {
       const number = Math.floor(Math.random() * players.length - 1)
       if (number === notThisOne && number !== 0) {
           return players[number - 1]
       }
       else return players[number + 1]
    }
    else {
        return players[Math.floor(Math.random() * players.length)]
    }
}
console.log("Let's go !")
const value = process.env.PLAYER
console.log(theOne(players))
if (value < players.length && value >= 0) {
console.log(theOne(players, value - 1))
}
else {
    console.log("Not a valid value")
}
module.exports = theOne