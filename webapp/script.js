// script.js
document.addEventListener('DOMContentLoaded', function() {
    const emojiElement = document.getElementById('emoji');
    const messageContainer = document.getElementById('messageContainer');
    const loveMessageElement = document.getElementById('loveMessage');
    
    const loveMessages = [
        "Je t'adore!",
        "Je t'aime!",
        "Tu es magnifique!",
        "Bisous!",
        "Mon coeur!",
        "Ma petite Louloute",
        "Choupinette",
        "Papa ❤️ Zoé"
    ];
    
    const niceEmojis = ["😊", "😄", "😍", "🥰", "😘", "😎", "😁"];
    
    function randomEmoji() {
        if (Math.random() < 0.1) {
            return "💩";
        }
        return niceEmojis[Math.floor(Math.random() * niceEmojis.length)];
    }
    
    function showRandomEmoji() {
        emojiElement.textContent = randomEmoji();
    }
    
    function showLoveMessage() {
        const randomMessage = loveMessages[Math.floor(Math.random() * loveMessages.length)];
        loveMessageElement.textContent = randomMessage;
        messageContainer.style.opacity = 1;
        
        setTimeout(() => {
            messageContainer.style.opacity = 0;
        }, 2000);
    }
    
    emojiElement.addEventListener('click', showLoveMessage);
    
    // Show random emoji on load
    showRandomEmoji();
});
