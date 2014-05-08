var cardIterator;

for(cardIterator=0;cardIterator<MAX_CARD_HAND;cardIterator++){
    if(objHand.cardInHand[cardIterator]==-1){
        objHand.cardInHand[cardIterator]=instance_create(VIEW_WIDTH-300+cardIterator*64,VIEW_HEIGHT-200,objIngameDeck.ChosenDeckIngame[cardFromDeck]);
        objHand.cardInHand[cardIterator].index = cardIterator;
        break;
    }    
    cardFromDeck++;
}
