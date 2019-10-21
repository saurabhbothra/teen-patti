defmodule Teenpatti.Game do

def new do
   %{
       userName: "",
       listOfUsers: [],
       potMoney: 0,
       currentStakeAmount: 10,
       handForPlayer1: %{},
       handForPlayer2: %{},
       moneyPlayer1: 1000,
       moneyPlayer2: 1000,
       isShow: false,
       isFoldPlayer1: false,
       isFoldPlayer2: false,
       isGameActive: false,
       isBetPlayer1: false,
       isBetPlayer2: false,
       isBlindPlayer1: false,
       isBlindPlayer2: false,
       isSeenPlayer1: false,
       isSeenPlayer2: false,
       turn: 0
    }
end

def addUserToMap(game, userName) do
     if(length(game.listOfUsers) != 5) do
          listUsers = game.listOfUsers ++ [userName];
          %{
             userName: game.userName,
             listOfUsers: listUsers,
             potMoney: game.potMoney,
             currentStakeAmount: game.currentStakeAmount,
             handForPlayer1: game.handForPlayer1,
             handForPlayer2: game.handForPlayer2,
             moneyPlayer1: game.moneyPlayer1,
             moneyPlayer2: game.moneyPlayer2,
             isShow: game.isShow,
             isFoldPlayer1: game.isFoldPlayer1,
             isFoldPlayer2: game.isFoldPlayer2,
             isGameActive: game.isGameActive,
             isBetPlayer1: game.isBetPlayer1,
             isBetPlayer2: game.isBetPlayer2,
             isBlindPlayer1: game.isBlindPlayer1,
             isBlindPlayer2: game.isBlindPlayer2,
             isSeenPlayer1: game.isSeenPlayer1,
             isSeenPlayer2: game.isSeenPlayer2,
             turn: game.turn 
           }
     else
          game
     end
end

def client_view(game) do
    %{
      userName: "",
      listOfUsers: game.listOfUsers,
      potMoney: game.potMoney,
      currentStakeAmount: game.currentStakeAmount,
      handForPlayer1: game.handForPlayer1,
      handForPlayer2: game.handForPlayer2,
      moneyPlayer1: game.moneyPlayer1,
      moneyPlayer2: game.moneyPlayer2,
      isShow: game.isShow,
      isFoldPlayer1: game.isFoldPlayer1,
      isFoldPlayer2: game.isFoldPlayer2,
      isGameActive: game.isGameActive,
      isBetPlayer1: game.isBetPlayer1,
      isBetPlayer2: game.isBetPlayer2,
      isBlindPlayer1: game.isBlindPlayer1,
      isBlindPlayer2: game.isBlindPlayer2,
      isSeenPlayer1: game.isSeenPlayer1,
      isSeenPlayer2: game.isSeenPlayer2,
      turn: game.turn
    }
end

end