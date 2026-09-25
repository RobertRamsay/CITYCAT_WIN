if g.hasCoin and !g.usedCoin
	{
	other.state=1 // show the open frame
	g.usedCoin=1
	g.msg="A newspaper!"
	}
if !g.hasCoin and !g.usedCoin
	{
	g.msg="Newspapers, $0.10"
	}
	