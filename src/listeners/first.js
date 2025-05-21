module.exports = {
  name: 'dmHello',
  load: async (discordBot) => {
    discordBot.client.on('messageCreate', async (message) => {
      if (message.channel.type === 1 && message.content.toLowerCase() === 'hello') {
        await message.reply('Hi there!');
      }
    });
  },
};
