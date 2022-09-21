const assert = require('chai').assert
const select_player = require('./select')
const players = ["Yamila", "Jessy", "Geoffrey", "Sabine", "Daryl", "Fabrice", "Edwina"]

describe("select_player",()=>{
    context("selector",()=>{
        it("should be a player",()=>{
            assert.isString(select_player(players), "Résultat invalide")
        }) 
    })
})

describe("select_player",()=>{
    context("selector",()=>{
        it("should not be a player",()=>{
            assert.isNotNumber(select_player(players), "Résultat invalide")
        }) 
    })
})  