var cardIterator;

for(cardIterator=0;cardIterator<MAX_CARD_HAND && cardFromDeck<objIngameDeck.ingameSize;cardIterator++){
    if(objHand.cardInHand[cardIterator]==-1){
        objHand.cardInHand[cardIterator]=instance_create(VIEW_WIDTH/2+(cardIterator-1)*64,VIEW_HEIGHT-50,objIngameDeck.ChosenDeckIngame[cardFromDeck]);
        objHand.cardInHand[cardIterator].index = cardIterator;
        cardFromDeck++;
    }    
}
