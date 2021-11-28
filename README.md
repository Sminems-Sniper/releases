### Sminems-Sniper

Here is a brief information about available options for Launch Mode. Docs for other options will be available soon.

#### Buy amount:

- Self explanatory

#### Take profit:

- This is just like binance and kucoin future trades where you can set your target amount for selling.
- For example, if you buy 0.1 BNB and want to sell for 250% profit then you can input 0.25 here and as soon as your total tokens values hit that amount it will trigger sell.
- Note that this won’t count taxes if there is any, so you will have to set this accordingly.
- Set this to 0 (default) if you don’t wanna sell.

#### Stop loss:

- Just like “take profit” option but reverse. If your purchased tokens value starts dropping and you wanna cash out.
- For example, if you have purchased 0.1 BNB worth of tokens and want to swap back when price drops 50% or below then you can set this to 0.05 and as soon as it hits the mark all tokens will be sold.
- 0 (default) to disable.

#### Slippage percent:

- Most tokens charges you a certain tax, but sometimes there are anit-bot method on contracts to avoid sniping and in that case contract will charge you higher amount of tax.
- To avoid high tax, set this value accordingly. For example if a token has 10% tax on buys then set this value to 11.
- Note that if you set this value lower than buy tax, then your transaction will be reverted. Default value is 20.

#### Order divisor:

- This option enable you to buy tokens with max transaction limitation. Note that this cannot bypass max wallet.
- For example, if you want to buy 1 BNB but the contract limits upto 0.2 BNB then divisor is 5.
- Divide total buy amount with max transaction limit like `1 / 0.2`.

#### Block wait:

- There are some contracts who prevents bots who purchases within first few blocks. With this option you can pause your buy order for X amount of blocks.
- For example if liquidity was added on block 610 and you set this to 3 then your order will be executed after block 612 is mined, resulting your transaction to be included in block 613.

#### Time wait:

- Like “block wait” there are also some contracts which prevents purchasing for X seconds or minutes after liquidity is added.
- You can specify human readable values to wait X seconds or minutes. For example, if you want to wait 15 seconds you can write “15s” or for minute “15m”.
- If you only specify number, it will be treated as milliseconds.
- If “block wait” is enabled, this option won’t be visible.

#### Gas limit WEI:

- Each transaction on smart contract require different amount of gas limit. The software tries to estimate required amount of gas but most of the time it fails to do so.
- If the software fails to estimate, it will set default value to 945000 which is high enough.
- You can override or skip this option, it’s optional.
- You will only be charged for the actual gas used.

#### Gas price GWEI:

- This option lets you define the amount you are willing to spend for your each gas used.
- You need to set this higher to make sure your transaction is included in the block faster.
- The more gwei you set, the more gas you will pay so be reasonable.
- For txpool (aka mempool) sniping it will skip this set price and use gas price from triggered transaction to avoid front-run.

#### Snipe method:

- `Txpool/Mempool` will scan the blockchain for pending transactions. This options is most profitable but you can’t use this on every project.
- `After launch` monitors events generated from transactions. Requires high gas fee.

#### Snipe type:

- `On Pair Liquidity` is the events when contract adds liquidity. Best for fair launches.
- `Custom ABI/Event` is for contracts with bot protection. With this method you can trigger buys at specific events emitted or function execution by owner.

_If you have any questions, please reach out to us via our telegram group on [@SminemsSniper](https://t.me/SminemsSniper)._
