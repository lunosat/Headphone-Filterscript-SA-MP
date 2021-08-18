//[FS]Fones de ouvido. BY:AKIRAH

#include <a_samp>
#include <zcmd>

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Fone de ouvido. BY:AKIRAH");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" Blank Gamemode by your name here");
	print("----------------------------------\n");
}

#endif

public OnPlayerSpawn(playerid)
{
	SendClientMessage(playerid,-1, "Escute suas musicas preferidas com nossos fones {08088A}/ajudafone");
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == 2)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0:
	            {
	                ShowPlayerDialog(playerid, 3, DIALOG_STYLE_LIST, "Fone de ouvido", "{08088A}ANTENNE\n{298A08}RADIO ELECTRONIC\n{B45F04}REGGAE\n{B404AE}RADIO SOFRENCIA\n{FFFF00}RADIO HUNTER\n{DF0101}RAP\n{04B4AE}DUBSTEP\n{AC58FA}ANOS 2000\nDesligar", "Tocar", "");
				}
				case 1:
				{
				    ShowPlayerDialog(playerid, 4, DIALOG_STYLE_LIST, "Fone de ouvido", "Setanejo\nFunk\nEletronica\nPop\nRock\nBlack", "Escolher", "Sair");
				}
				case 2:
				{
				    ShowPlayerDialog(playerid, 20, DIALOG_STYLE_INPUT, "Fone de ouvido", "Coloque o link de sua musica em formato .mp3", "Tocar", "Sair");
				}
			}
		}
		return 1;
	}
	if(dialogid == 3)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0://antenne
	            {
	            	PlayAudioStreamForPlayer(playerid, "http://23.29.71.154:8140/streamTitle1%22");
				}
				case 1://radio electronic
				{
				    PlayAudioStreamForPlayer(playerid, "http://live.hunterfm.com/electronic%22");
				}
				case 2://reggae
				{
				    PlayAudioStreamForPlayer(playerid, "http://64.71.79.181:9998/streamTitle1%22");
				}
				case 3://sofrencia
				{
				    PlayAudioStreamForPlayer(playerid, "http://live.hunterfm.com/country%22");
				}
				case 4://hunter
				{
					PlayAudioStreamForPlayer(playerid, "http://listen.shoutcast.com:80/Radio...HitzChannel%22");
				}
				case 5://rap
				{
				    PlayAudioStreamForPlayer(playerid, "http://aovivo.radiowestside.com.br:9470/%22");
				}
				case 6://dub
				{
				    PlayAudioStreamForPlayer(playerid, "http://148.251.91.15:7002/%22");
				}
				case 7://2000
				{
				    PlayAudioStreamForPlayer(playerid, "http://listen.shoutcast.com/radiohun...hitschannel%22");
				}
				case 8://off
				{
				    StopAudioStreamForPlayer(playerid);
				}
			}
		}
		return 1;

	}
	if(dialogid == 4)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0://sertanejo
	            {
	                ShowPlayerDialog(playerid, 5, DIALOG_STYLE_LIST, "Musicas", "Não fala não pra mim\nCarência\nPodia ser a gente", "Tocar", "Sair");
				}
				case 1://Funk
	            {
	                ShowPlayerDialog(playerid, 6, DIALOG_STYLE_LIST, "Musicas", "Amor de verdade\nPaPum\nSó quer vrau", "Tocar", "Sair");
				}
				case 2://eletronica
	            {
	                ShowPlayerDialog(playerid, 7, DIALOG_STYLE_LIST, "Musicas", "Diamonds (extended mix)\nTogethe\nSomebody to love", "Tocar", "Sair");
				}
				case 3://pop
	            {
	                ShowPlayerDialog(playerid, 8, DIALOG_STYLE_LIST, "Musicas", "Eu vou arrasar\nMeu abrigo\nMedo de amar", "Tocar", "Sair");
				}
				case 4://rock
	            {
	                ShowPlayerDialog(playerid, 9, DIALOG_STYLE_LIST, "Musicas", "Quero te adorar\nNão sou perfeito\nè tudo ou nada", "Tocar", "Sair");
				}
				case 5://black
	            {
	                ShowPlayerDialog(playerid, 10, DIALOG_STYLE_LIST, "Musicas", "Estamira\nW raimundo - feat enio\nSwag", "Tocar", "Sair");
				}
				
			}
		}
		return 1;
	}
	if(dialogid == 5)//sertanejo
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0://não fala não pra mim
	            {
	                PlayAudioStreamForPlayer(playerid, "https://griphon-g1.sscdn.co/palcomp3/7/8/7/a/humbertoeronaldo-nao-fala-nao-pra-mim-bn-mix02-ac18f3a3.mp3");
				}
				case 1://car~encia
	            {
	                PlayAudioStreamForPlayer(playerid, "https://griphon-g2.sscdn.co/palcomp3/1/e/5/d/humbertoeronaldo-carencia-5788a7bb.mp3");
				}
				case 2://podia ser a gente
	            {
	                PlayAudioStreamForPlayer(playerid, "https://pegasus-g4.sscdn.co/palcomp3/2/8/1/3/humbertoeronaldo-podia-ser-a-gente-7649e01d.mp3");
				}
			}
		}
	}
	if(dialogid == 6)//funk
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0://amor de verdade
	            {
	                PlayAudioStreamForPlayer(playerid, "https://griphon-g5.sscdn.co/palcomp3/5/b/1/7/mckekel-mc-rita-e-indecisa-o-dj-rd-d17b43d8.mp3");
				}
				case 1://papum
	            {
	                PlayAudioStreamForPlayer(playerid, "https://pegasus-g4.sscdn.co/palcomp3/7/7/4/4/kevinho-pa-pum-dj-rd-37b2037c.mp3");
				}
				case 2://so quer vrau
	            {
	                PlayAudioStreamForPlayer(playerid, "https://phoenix-g5.sscdn.co/palcomp3/f/3/d/d/mcmm-e-dj-rd-so-quer-vrau-70241d42.mp3");
				}
			}
		}
	}
	if(dialogid == 7)//eletronica
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0://Diamonds
	            {
	                PlayAudioStreamForPlayer(playerid, "https://phoenix-g5.sscdn.co/palcomp3/d/7/2/9/katryyx-diamonds-extended-mix-9daf9a22.mp3");
				}
				case 1://Togethe
	            {
	                PlayAudioStreamForPlayer(playerid, "https://mermaid-g2.sscdn.co/palcomp3/7/4/6/1/dinsideproject-togethe-exclusiva-palco-mp3-09caf563.mp3");
				}
				case 2://somebody to love
	            {
	                PlayAudioStreamForPlayer(playerid, "https://mermaid-g1.sscdn.co/palcomp3/0/2/4/c/mattsowza-somebody-to-love-3dfc3ae7.mp3");
				}
			}
		}
	}
	if(dialogid == 8)//pop
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0://eu vou arrasar
	            {
	                PlayAudioStreamForPlayer(playerid, "https://pegasus-g2.sscdn.co/palcomp3/8/a/3/4/camilaloures-eu-vou-arrasar-1a2b1bfd.mp3");
				}
				case 1://meu abrigo
	            {
	                PlayAudioStreamForPlayer(playerid, "https://pegasus-g2.sscdn.co/palcomp3/b/9/c/2/Melimoficial-meu-abrigo-e8f3b70b.mp3");
				}
				case 2://medo de amar
	            {
	                PlayAudioStreamForPlayer(playerid, "https://phoenix-g5.sscdn.co/palcomp3/d/b/7/a/andreportooficial-medo-de-amar-37b1bcb9.mp3");
				}
			}
		}
	}
	if(dialogid == 9)//rock
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0://quero te adorar
	            {
	                PlayAudioStreamForPlayer(playerid, "https://griphon-g5.sscdn.co/palcomp3/9/9/e/b/montesalez-quero-te-adorar-16697aa9.mp3");
				}
				case 1://não sou perfeito
	            {
	                PlayAudioStreamForPlayer(playerid, "https://dragon-g5.sscdn.co/palcomp3/7/a/f/7/vienarockoficial-nao-sou-perfeito-e7489be4.mp3?");
				}
				case 2://é tudo ou nada
	            {
	                PlayAudioStreamForPlayer(playerid, "https://phoenix-g4.sscdn.co/palcomp3/1/d/3/a/amarcura-o-tudo-e-nada-27a70576.mp3?");
				}
			}
		}
	}
	if(dialogid == 10)//black
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0://estamira
	            {
	                PlayAudioStreamForPlayer(playerid, "https://dragon-g4.sscdn.co/palcomp3/a/9/0/8/yzaluoficial-estamira-ela-nao-sabe-a-forca-que-ela-tem-59060075.mp3");
				}
				case 1://w raimundo-feat enio
	            {
	                PlayAudioStreamForPlayer(playerid, "https://mermaid-g3.sscdn.co/palcomp3/b/e/d/e/irmaocarlosoficial-w-raimundo-feat-enio-d49a2689.mp3?");
				}
				case 2://swag
	            {
	                PlayAudioStreamForPlayer(playerid, "https://pegasus-g3.sscdn.co/palcomp3/3/b/9/c/palcoyudi-02-yudi-sweg-feat-mael-e-diamante-prodbydmax-mp3-c95ebe.mp3?");
				}
			}
		}
	}
	if(dialogid == 20)
	{
	    if(response)
		{
		    PlayAudioStreamForPlayer(playerid, inputtext);
		}
	}
	return 1;
}

CMD:ajudafone(playerid)
{
	ShowPlayerDialog(playerid, 1, DIALOG_STYLE_MSGBOX, "Ajuda fones-BY:AKIRAH", "{F6F4F2}Para usar seu fone use {17AB12}/pegarfones {F6F4F2} e escolha\nentre radios, musicas ou colocar suas proprias\nmusicas.\n\n\nAcha que o fone não esta correto em sua skin?\nuse {17AB12}/acomodarfones {F6F4F2} e escolha a posição certa\n para sua skin.\n\n\nCansou de ouvir musicas? simples guarde seu\n fone, use {17AB12}/guardarfones{F6F4F2}.", "ok", "");
	return 1;
}

CMD:pegarfone(playerid)
{
	ShowPlayerDialog(playerid, 2, DIALOG_STYLE_LIST, "Fone de ouvidos", "Radios\nMusicas\nMinhas musicas", "Ok", "Sair");
	SendClientMessage(playerid, -1, "Você colocou o fone de ouvido");
	SetPlayerAttachedObject(playerid, 0, 19423, 2, 0.1200,0.04, -0.0035,0,100,100,1.4,1.4,1.4);
	return 1;
}

CMD:guardarfone(playerid)
{
	SendClientMessage(playerid, -1, "Você guardou o fone de ouvido");
	RemovePlayerAttachedObject(playerid, 0);
	StopAudioStreamForPlayer(playerid);
	return 1;
}

CMD:acomodarfone(playerid)
{
	SendClientMessage(playerid, -1,"acomode seu fone de acordo com sua skin");
	EditAttachedObject(playerid, 0);
	return 1;
}
