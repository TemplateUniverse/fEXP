script_name 'fEXP'
script_author 'imring'
script_version '1.3.'

--- LIBRARY's
local samp = require 'samp.events'
require 'lib.moonloader'
require 'lib.sampfuncs'

--- PARAM's

local cmds = {
	
	['hlvl'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ��������� ������. [ /hlvl ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �� ������ ���������� ��� ��� ������ 1 EXP.')
			sampSendChat('/an '..id..' ����� ��� �������� - ����� �������� ����� 60 ����� �� �������.')
			sampSendChat('/an '..id..' ������, ������� ������� �������� �� ��������� PayDay - [ /time ].')
			sampSendChat('/an '..id..' ��� ��������� ������ ����� ������� ������������ ���-�� EXP. [ /stats ]')
			sampSendChat('/an '..id..' ��� ������ ��������� ������ ���-�� EXP, ��� ������� ������������� ���������.')
		end)
	end, '�������� � ��������� ������.' },

	['hv'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������� ������. [ /hv ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' [ /voenhelp ]')
			sampSendChat('/an '..id..' �������� ������� ����� ����� ���� �������� ������ ���-�� ������ � �������.')
			sampSendChat('/an '..id..' ������ ���������� � ������� - [ /invites � ������ ] [ /gps � ����������� � ���. ������� ].')
			sampSendChat('/an '..id..' ������� ����� ����� ��� ����, ����� �������� � ����� �������� �����������.')
			sampSendChat('/an '..id..' �����, ��� ����, �� �� ������� ������ ������ � Ammu-Nation.')
		end)
	end, '�������� � ������� ������.' },

	['dn'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������ �������������. [ /dn ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ������ �������������� ��� ���������� ����� 5.000 ������ �� ����������. [ /skill ]')
			sampSendChat('/an '..id..' ������� � ����������� �������� [ /job ] � ������������� ���������� [ /agetcar ].')
			sampSendChat('/an '..id..' �������� ������ ������ [ /gryz ]. ������ �����, ��� ���� �� ���������� ����� �������������� ...')
			sampSendChat('/an '..id..' ... ���������, �� �� ����� ������ ��������� ������. � ������� ����� ������ ���������!')
			sampSendChat('/an '..id..' ��������, ���� ����� ����� �� 33 �����, ��� �� ����� � ������ ���� �� ������� �� �����. ')
			sampSendChat('/an '..id..' ����� ����, ��� �� ����� ����� - ��� �������� ��������� � �� ������ �������� ������.')
			sampSendChat('/an '..id..' ������� ������ ��������� �� ��������. �� ����� �� ���������� ����, �� ������ �����������.')
		end)
	end, '�������� � ������ ������������.' },

	['hchs'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������ ������. [ /hchs ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������� ���� ������� ������, ���������� ������ [ /chs ]. ��� ����� ������ � ���� ������.')
			sampSendChat('/an '..id..' ������ ����������, � ����� �� ������� ��, � �� �����-��? �������������� [ /stats ].')
			sampSendChat('/an '..id..' ����� �� ������� ������ ��� ����� ������ - ����������, �� �� ����� ������.')
		end)
	end, '�������� � ������ ������.' },

	['hzol'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������. [ /hzol ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��������� ������ ������ ����������, ����� ��� ������ � ������� ��� �� �� �������� ������.')
			sampSendChat('/an '..id..' ���������� ���� ������ �� ������� - �� $7.000 �� $15.000 �� ����� ������.')
			sampSendChat('/an '..id..' ���� ���������� ������� - [ /donate ].')
		end)
	end, '�������� � ������.' },

	['hitm'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� ���������� � ��������. [ /hitm ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������� - ��� ������� �����������, ��� ��, ��� � �����.')
			sampSendChat('/an '..id..' �������������� ������ ���� ���������� � ��� �� �� �����.')
			sampSendChat('/an '..id..' ��� ������ ���������� �� ������ ����� �� ������.')
		end)
	end, '�������� ���������� � ��������.' },

	['hmoon'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������ � NASA. [ /hmoon ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����������� �� ��� �� ������ � ���� NASA. [ /job � ���������� Moon One ]')
			sampSendChat('/an '..id..' ��� ������ �� ��� ���������: 3 �������, 500 ����, 1000 ����. [ /skill ]')
			sampSendChat('/an '..id..' ���, ������ ���.������, �� ������������� � ������.')	
			sampSendChat('/an '..id..' ������ ������������ � 20 ����� ������� ����.')	
			sampSendChat('/an '..id..' �� ������� ��� � ��� ����� �����: ����������� �� ���� ��� �� ����.')
			sampSendChat('/an '..id..' �� ���� �� �������: �������� ������ � ����������, ������� �������, ������� ���������.')
			sampSendChat('/an '..id..' � �� �����: ���������� ���������, �������������� �����, �������� ������ ����������.')	
		end)
	end, '�������� � ������ � NASA.' },

	['hjb'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ������� � ���, ����� ������ ������ �� �����. [ /hjb ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������������� �� ������������� ������ ����� ������, ���� ��������� ��� ���� ���������.')
			sampSendChat('/an '..id..' ���� �� �� �������� � ���������� �� ������, ��� �������� ��������� ������� ������, �� ...')
			sampSendChat('/an '..id..' ... ������� ������ � ��������������� ������ �� ����� ������.')
			sampSendChat('/an '..id..' ��� �����: forum.pears-project.com.')	
			sampSendChat('/an '..id..' ������ ���������� �� �� ����� � ��� ������������� ����������� �� �����.')				
		end)
	end, '������� � ���, ����� ������ ������ �� �����.' },

	['hh'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ��������� ����. [ /hh ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��������� ��� ������� ��������� �� ���������. [ /gps � ������ � ��������� ].')
			sampSendChat('/an '..id..' ���������� �� ���������, ������ ���������� ���, � ������ ��� ���� ������.')
			sampSendChat('/an '..id..' �������� ������ ��������� ����� [ /houses ] � ������� ��� [ /createhouse � ].')
		end)
	end, '�������� � ��������� ����.' },

	['hm'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������� � �����. [ /hm ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id) 
			sampSendChat('/an '..id..' ����� ������/����� ����� �� ������ �������� ����������� - [ /meshok ID ].') 
			sampSendChat('/an '..id..' ������� �������� - [ /tie ID ]. ��������� - [ /untie ID ].') 
		end)
	end, '�������� � ������� � �����.' },

	['hz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ����� ������. [ /hz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id) 
			sampSendChat('/an '..id..' ��� ���� ����� ���������� �� ���� ������� ���������� ������� �������.') 
			sampSendChat('/an '..id..' ��� ����� ����� ������� � ������� LSPD [ /gps >> ����������� >> ������� >> LSPD ].')	
			sampSendChat('/an '..id..' ����� ����� �������� ���� ������ SWAT, ��� ����� ��� ����� ������� [ /gps >> ����������� >> ������� >> SWAT ].')
			sampSendChat('/an '..id..' ���� � ��������� �������� �� �������� SWAT.')
			sampSendChat('/an '..id..' ������ PayDay ������� ���� ������ �������.')
		end)
	end, '�������� � ���, ��� ����� ������.' },

	['hadm'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � �������� � ��������. [ /hadm ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������� �����, ������� ������������� ��������� ������ �� ������� ��� ��������.')
			sampSendChat('/an '..id..' �� ���� ����������� � ����� ��� � �� ������.')
			sampSendChat('/an '..id..' ������� ������, �������� ������, � � ��� �������� ���� ������ �������� ����.')
		end)
	end, '�������� � �������� � ��������.' },

	['hsex'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � �������������. [ /hsex ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������������� - ������ �����.')
			sampSendChat('/an '..id..' �� ������ ������� ������ ��� ��������� $1 � �����������. ������������ ������� - 5000.')
			sampSendChat('/an '..id..' ��������� ��� �� ������. �������� � ����� � ...')
			sampSendChat('/an '..id..' ����� �� ����� � ����� ���-�������. [ /gps � ������ � �������� LS ]')
		end)
	end, '�������� � �������������.' },

	['hank'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � �����. [ /hank ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id..' ')
			sampSendChat('/an '..id..' ���� ����� �������� ��� �����, ���� �������� ���� ���� ������.')
			sampSendChat('/an '..id..' �����������: [ /gps � ������ � ������������ ���������� � ���������� ����� ].')
			sampSendChat('/an '..id..' ������ ���� ���������� ����� ����� - [ /auto � ��������� � �������� ].')
			sampSendChat('/an '..id..' ������� �������� ���������� - ������.')
		end)
	end, '�������� � �����.' },

	['premium'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���������� �����. [ /premium ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Premium VIP [ 900 GOLD. ]:')
			sampSendChat('/an '..id..' - ����� ��������: ����������� ��� ���������')
			sampSendChat('/an '..id..' - ���������� ���������� ���� �������. [ /skill ]')
			sampSendChat('/an '..id..' - +1 Exp ������ 5 �����.')
			sampSendChat('/an '..id..' - �������������� ���������� �� ����� �����������. [ /leave ]')
			sampSendChat('/an '..id..' - ��������� ������� [ /ad ] + ����� ��������: 2 ����.')
			sampSendChat('/an '..id..' - ����������� �������� � ���� ������ ��������� ����������� ���������� ���.')
			sampSendChat('/an '..id..' - ����������� ��������� ������ ���������. [ /togwh ]')
			sampSendChat('/an '..id..' ���������� � ���� VIP - /vip')
			sampSendChat('/com '..id)
		end)
	end, '�������� � ���������� �����.' },

	['hlink'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������� �� � ������. [ /hlink ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id..' ')
			sampSendChat('/an '..id..' ���� � ����� �������: pears-project.��m')
			sampSendChat('/an '..id..' ����������� ������ � ��: vk.��m/pearsproject')
			sampSendChat('/an '..id..' ���������� �������: vk.��m/pearspodslushano')
			sampSendChat('/an '..id..' ������ ���� ����� ����������� �� ��������� chatlog.')
		end)
	end, '�������� � ������� �� � ������.' },

	['otm'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� �� ��������. [ /otm ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� �������� ���� ��� ����� ������ ������� � ������������ [ /gps � ������ ].')
			sampSendChat('/an '..id..' ���������� ����� � ���������� �����������, �����, ����� ...')
			sampSendChat('/an '..id..' ... � ���� ������ ��� ������� ������. ������ ���� �������� ������.')
			sampSendChat('/an '..id..' ��������! ���� �� ��������� - �� ������ ��������� � ������!')
			sampSendChat('/an '..id..' ������� �������� ���������� - ������.')
		end)
	end, '�������� �� ��������.' },

	['pri'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ������� ������. [ /pri ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/an '..id..' �������� ����! <3')
			sampSendChat('/com '..id)
		end)
	end, '�������� �������� ����.' },

	['hut'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������� ����. [ /hut ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �� ������, ���� ���� ���� ����������?')
			sampSendChat('/an '..id..' [ /car � ���������� � ������� ].')
		end)
	end, '�������� � ���, ��� ������� ����.' },

	['hkani'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ��������. [ /hkani ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �������������� ���������, ����� ��������� ���� ���������.')
			sampSendChat('/an '..id..' �� ��������: ������� � [ /kani ] � ���������� [ /fillkani ].')
			sampSendChat('/an '..id..' ����� ����� �������� � ���� � ����������� ��� �� 20 ������ [ /fillcar ].')
		end)
	end, '�������� � ��������.' },

	['hsp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �����. [ /hsp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������� ���������� �� ������� �� ����� ������.')
			sampSendChat('/an '..id..' ���� ��������� ��� ��������� - �� ������ �������� ������ ...')
			sampSendChat('/an '..id..' ... �� ����� ������ � ������� ��������.')
			sampSendChat('/an '..id..' C������ �� ���������, �������� ��� ����!')
		end)
	end, '�������� � ���, ��� �����.' },

	['hg'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �������� ������. [ /hg ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� �������� ������ ����������� ������� - [ /give ].')
			sampSendChat('/an '..id..' ������� ���� ������, �����, ���������� ������ ������� ������ ��������.')
		end)
	end, '�������� � ���, ��� �������� ������.' },

	['hin'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ����������. [ /hin ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ���������� �� ������� ���������� ����� 2 ������� [ 8 ����� � ���� ].')
			sampSendChat('/an '..id..' ����� ����� ��� ����������� ����������� ����������� ����������.')
			sampSendChat('/an '..id..' ������, � ������ ������� ���� �������������� �������� �� ������� � ������.')
			sampSendChat('/an '..id..' ��������� � �������, ����� �������� �� �������.')
			sampSendChat('/an '..id..' ��������/�������� ������ - [ /invites ]. ������ ������ - [ /leaders ].')
		end)
	end, '�������� � ����������.' },

	['hc'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � �������� ������. [ /hc ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������ ���������� � ������ (����) ����� � �������� ������.')
			sampSendChat('/an '..id..' [ /gps � ������ � ������� ������ ].')
		end)
	end, '�������� � �������� ������.' },

	['had'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������ � ����. [ /had ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������ ����� ������� ��������, ��� ������ ����� �������.')
			sampSendChat('/an '..id..' ����������� ������ ������������ ������ - [ /ad ].')
		end)
	end, '�������� � ������ � ����.' },

	['hui'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� �� ����������. [ /hui ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ��������� �� ������� - ���������� � ������ ������.')
			sampSendChat('/an '..id..' ������������� �� ����� ��������� ������� �� �������.')
			sampSendChat('/an '..id..' �� ������ ��������� ��������������, ���� � ��� ���� Platinum VIP. [ /vipuninvite ]')
		end)
	end, '�������� �� ����������.' },

	['hcar'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������� ����. [ /hcar ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' [ /help ] � ��� ������ ������?')
		end)
	end, '�������� � ������� ����.' },

	['put'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������, ��� ���������. [ /put ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����������, �� �������!')
			sampSendChat('/an '..id..' ������� - ��� ��� �������. ������� - ��� ������.')
			sampSendChat('/an '..id..' �������� - ���������� ������� � �������������.')
		end)
	end, '�������, ��� ���������.' },

	['pls'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �� ����� ������� � /dai. [ /pls ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������������� �� �����: EXP, �������, ������, ������, ���������� �����.')
			sampSendChat('/an '..id..' � �����: ������ � ������ �� �������������, �� ������ �� ������������ ��������.')
			sampSendChat('/an '..id..' ����������: ���������� ������ �� ������.')
			sampSendChat('/an '..id..' ���, �� �� ������: �����, ������, ������, ��, ���������� � ������ ������� �������.')
			sampSendChat('/an '..id..' �������� ����!')
		end)
	end, '�������� � ���, ��� �� ����� ������� � /dai.' },

	['sr'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ���������� �� ��, ��� �� ������������ �� ������ �������. [ /sr ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �������, ��� �� �� ������ �������� ��� �������. ���� ��������� ��������� - ����� �����.')
		end)
	end, '���������� �� ��, ��� �� ������������ �� ������ �������.' },

	['sad'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������ ����������. [ /sad ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ������ ���������� ��� ���������� ��������� �� ����� CNN. �������������� �����������.')
			sampSendChat('/an '..id..' [ /gps � ����������� � ������� � CNN ]. ���������� ���� - ������� � ������.')
			sampSendChat('/an '..id..' ����� ���� ����� ������� � 3D �������, ��������� � ���� � ����������� [ /ad ].')
			sampSendChat('/an '..id..' �����, ��������� ��������� ���� � ��������� ���� ����������. ��� ���� �������� $1500.')
		end)
	end, '�������� � ���, ��� ������ ����������.' },

	['fu'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ������� � ���, ��� �� �� ������ ������. [ /fu ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������������� �� ������ ��� � ���� ������. ���������� ������ ��� �������� ��������������.')
		end)
	end, '������� � ���, ��� �� �� ������ ������.' },

	['slet'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ����� ������� ����. [ /slet ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��������� ���������� ������� ������������� ��������� � 19:30.')
			sampSendChat('/an '..id..' ���������� ������ ��������� �������� - [ /houses ].')
		end)
	end, '����� ������� ����.' },

	['obr'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ������������ ���������. [ /obr ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����������� ���� ���������, �� ������, ��� ��� ��� �����������.')
			sampSendChat('/an '..id..' ���� ��� �� ���, ��� ��� ����� ��� �����-���� ������ - ����� �����.')
		end)
	end, '������������ ���������.' },

	['bcar'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ��� ��� ��������� �����? [ /bcar ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..'  ����� ������� ���� ��� ����� ���� ����� 24 ���� ��������� �������, ������ ���, ��� ���������� ����� ���������.')
			sampSendChat('/an '..id..' ������, ��������-�� ���������� �� �������� - [ /stats ].')
			sampSendChat('/an '..id..' ���� �� �� ������ ����� 24 ����,�� ������ ��������� 50.000$ � ���������� � ��� ����� ��� ��������.')
			sampSendChat('/an '..id..' ���������� ���������� ����� ����� ������� �� �������� [ /gps >> ��������� >> ��������� ].')
			sampSendChat('/an '..id..' �� �������� ������������� ��� ����� ���������� � ����� ������� ��� ��� ����� [ /car >> �� >> ������������ ��������� ].')
		end)
	end, '��� ��� ��������� �����?' },

	['hpp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �����. [ /hpp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����������� ���� ���������.')
			sampSendChat('/an '..id..' ���� ��������� ��� ��������� - �� ������ �������� ������ ...')
			sampSendChat('/an '..id..' ... �� ����� ������, � ������� ��������.')
			sampSendChat('/an '..id..' ���� �� �����, ��������� � ����� ���������, ������� ������������� ... ')
			sampSendChat('/an '..id..' ... ������ ��������� ���� ������������� ��� ��������� ������������ ��� ���������.')
		end)
	end, '�������� � ���, ��� �����.' },

	['rpr'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ��������� ������ � ���� ��������������. [ /rpr ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���������� � ���� �������������� �� ����� ������.')
			sampSendChat('/an '..id..' Pears Project � ����������� ������ � �������������� ������� �������� [ 1 ������ ]')
		end)
	end, '��������� ������ � ���� ��������������.' },

	['digg'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ��� ������ �� ���������� ��� �����������. [ /digg ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���� � ��� ����������� ���������� �����, � ����� ������ ���� �������� � ����������, ��:')
			sampSendChat('/an '..id..' ������� ����� ������� ���� � ������ ������, ���������� ��������.')
			sampSendChat('/an '..id..' ������� ��� �� ��� ���, ���� �� ��������� ��������.')
		end)
	end, '��� ������ �� ���������� ��� �����������.' },

	['hup'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� �� ���������� ���������. [ /hup ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��������� ���� ��������� ��� ��������� ����������� �����, ����� �� �������� �� ���.')
			sampSendChat('/an '..id..' �� ����, ���� �� ��������� ������� - ��� �������� ��� ��, ��� ������ �� ������� �� ���������.')
			sampSendChat('/an '..id..' ���������� �������� ������ ��� ����������� ���. ��������.')
			sampSendChat('/an '..id..' ����� �������� ������� ��������� ���������� ��������� �� ��������� ����� �� ����.')
		end)
	end, '�������� �� ���������� ���������.' },

	['hpark'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ��� ������������ ������. [ /hpark ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������������ ���� ������ ����, ���� ��� �����, ����������:')
			sampSendChat('/an '..id..' ����� � ��� � ������������ ���������� [ /car � �������� ].')
			sampSendChat('/an '..id..' ����� ���� ����������� ��� ���������� ����� ���������� ���, ��� �� ��� ������������.')
		end)
	end, '��� ������������ ������.' },

	['wq'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ������������ ������. [ /wq ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ������ �����������, ���������� ������ ��� �����.')
			sampSendChat('/an '..id..' ����������, ������ ��� �������� ��������� - ������ ��� �������������.')
		end)
	end, '������������ ������.' },

	['hcp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ��� ������ ���� �� ����. [ /hcp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ���� ���������� ������������ � ����������.')
			sampSendChat('/an '..id..' ���������� �������� ���� � ����� � ���� ����������, ����� ������ ���� �� ����������.')
			sampSendChat('/an '..id..' ����������� [ /gps � ������ � ��������� ].')
			sampSendChat('/an '..id..' ���, ���� ����� ������, ��� � ���������� � ����������� - ...')
			sampSendChat('/an '..id..' ... [ /auto � ��������� � �������� ], ��� �������, ��� ���� ����� �����������.')
		end)
	end, '��� ������ ���� �� ����.' },

	['ty'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ���������. [ /ty ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������� �� ���������, �� ������ ��� � ��������.')
		end)
	end, '���������.' },

	['ok'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ��������� ���� ������������. [ /ok ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���� ��������� ���� ����������.')
		end)
	end, '�������� � ���, ��� ��������� ���� ������������.' },

	['okk'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ������������ ���-�. [ /okk ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���� ��������� ���� �����������.')
			sampSendChat('/an '..id..' ���� �� �������� ������ � �����, �� �������� �� ����������, �� ��� ������� ...')
			sampSendChat('/an '..id..' ... ������ �� �� ������� � ��� ��������� ������-���� ���������.')
			sampSendChat('/an '..id..' ���� �������� ����� ���������� - ����� �����.')
		end)
	end, '������������ ���-�.' },

	['kt'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ��� ������, ��� �����. [ /kt ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ������, ��� �����.')
		end)
	end, '��� ������, ��� �����.' },

	['hl'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ������������ ���������. [ /hl ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���� ��������� �����������.')
			sampSendChat('/an '..id..' ����������, ������ ��� �������� ��������� - ������ ��� �������������.')
		end)
	end, '������������ ���������.' },

	['hunt'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� �� �����. [ /hunt ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����������� �� �����. [ /job � ����� ]')
			sampSendChat('/an '..id..' ��� �� ������� ������ ������ � �������� ��������������� �������� � �������.')
			sampSendChat('/an '..id..' �����, �� ������ ���������� ��.')	
			sampSendChat('/an '..id..' ����� ���� ����� ������� �����.')	
			sampSendChat('/an '..id..' ����� ���� ��� �� ����� ��������, ��� ����� ���������. ������� [ Y ]. ')	
			sampSendChat('/an '..id..' ���� ����� ������� ��� ������, ���������� ��� �� ������.')	
		end)
	end, '�������� �� �����.' },

	['hs'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������� �������. [ /hs ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �� �������� � ��� ������ �����. ��� ����� ���������� � ��� ���� ������� ������� [ /skill ].')
			sampSendChat('/an '..id..' ���� �� ������ ��������� � ��������� [ /gps >> ������ >> �������� ].')
			sampSendChat('/an '..id..' ���� ����� ��������� ����� �������������, ��������� � �������(����)...')
			sampSendChat('/an '..id..' ...������� ���������� ����� � ������.')
			sampSendChat('/an '..id..' ���������� ���� �� ������ ������� �� ���������� [ /job >> �������� ].')
			sampSendChat('/an '..id..' ����� ������ �� ������ ���������  [ /job >> �������/����� ���� � ����������].')
			sampSendChat('/an '..id..' ��������� �� ������ ������� � ��������������� ������ [ /gps >> ������ >> ����������� >> ��������������� ����� ].')
		end)
	end, '�������� � ������� �������.' },

	['hy'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������. [ /hy ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ����� ��� ����, ����� �������� ������ ������� � ������������� �� ���� ������.')
			sampSendChat('/an '..id..' �������� �� ������ ����� �� ������� ������ �����, ����� ������� ��� �� ��� 100 ���������.')
			sampSendChat('/an '..id..' ���� �� ����������� ���� �� ������, �� ��, � ���� ���� ���� �� ������ ...')
			sampSendChat('/an '..id..' ... �� ����� �������� ��, ��� �� ��������. [ /language ]')
		end)
	end, '�������� � ������.' },

	['hbenz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ��������� �������. [ /hbenz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ������ ��� ����� ����� ����� � ���������� �� ���� ��������������.')
			sampSendChat('/an '..id..' [ /gps � ������ � ���� ��������������], ����� ���� ������� ...')
			sampSendChat('/an '..id..' ... �� ��������������������� ����� [ /gps � ������ ].')
			sampSendChat('/an '..id..' ����� �������� ������ ������� � �������� ������ � ������� �������.')
		end)
	end, '�������� � ��������� �������.' },

	['pr'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ��������� ���. ����. [ /pr ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������ �� ����������, ��� ����� �������� �����.')
			sampSendChat('/an '..id..' �� ���� $19.000. ������������ � ��������� - [ /gps � ������ � ����������� ]')
			sampSendChat('/an '..id..' �������� ������������� �������, �������� � �����, ����� �������� ���� �����. ')
		end)
	end, '�������� � ��������� ���. ����.' },

	['hctaxi'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � �����. [ /hctaxi ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������ ����� �������� � ������������ � ��������� ��������.')
			sampSendChat('/an '..id..' ���������� ����� �������� ������ �� ������ ���������.')
			sampSendChat('/an '..id..' ���� ��������� �� �����, ���� �� ����������, �������� ��� ���� �������.')
			sampSendChat('/an '..id..' ����� �� �������� ������������� ������� �� $100 �� $500. ������ ����������� [ /gotaxi ].')
		end)
	end, '�������� � �����.' },

	['pobeg'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������. [ /pobeg ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������� �� ������, ��� ���������� ����� ������� ...')
			sampSendChat('/an '..id..' ... ����� �������� ������ [ /blade ]. �� ��� 20 �������� ���� ���� �������.')
			sampSendChat('/an '..id..' ����� ����, ��� ���-�� � �����, ��� ������������� ������������������.')
			sampSendChat('/an '..id..' ���� �� ����� ������� - ��� ����� ����� ����������� (� ���������, �� �� �����).')
			sampSendChat('/an '..id..' � ����� ������� ����� �����. � ����� ������ ����� - ����� ����.')
			sampSendChat('/an '..id..' ���� �� ����� - ��� ����� ������� � ������.')
		end)
	end, '�������� � ������.' },

	['hgive'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ���������� ���-�� ����� ���������. [ /hgive ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� �������� ������� �� ���������, ����� ������� ��������� �� ������� [ N ].')
			sampSendChat('/an '..id..' �����, ������� ������ �������, �������� �� ������ ���������� � �����, ������, ����.')
			sampSendChat('/an '..id..' ������� ID ����, ���� ���������, ����� ���������� ������������� ��������.')
		end)
	end, '�������� � ���, ��� ���������� ���-�� ����� ���������.' },

	['rukz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������ �������� [ /rukz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������ ����� ������ � ������������.')
			sampSendChat('/an '..id..' [ /gps � ������ � C���������� ]')
			sampSendChat('/an '..id..' ������ ��� ����� ��� ���������, ������� �� ������ ������������.')
			sampSendChat('/an '..id..' ����������������� � ������� �� ����� �������� ����� ������ ��� ��������.')
			sampSendChat('/an '..id..' ����� ������� ������ ������� �� ���� ������� � ���� ��������� [ N ].')
		end)
	end, '�������� � ������ ��������' },

	['tlf'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � �������� [ /tlf ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������� �������, ����������� - [ /ph ]. ')
			sampSendChat('/an '..id..' ������, � ����, �������� ��� ��������, � ������� ����� ����������������� ������.')
		end)
	end, '�������� � ��������' },

	['hbox'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������ ���������� � ��� �� �����. [ /hbox ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� � ������������ ����� ��� ���� ����� ��������� ����� �������.')
			sampSendChat('/an '..id..' ������ � ������ ����� ������� NGSA [ /gps >> ����������� >> ������� >> NGSA Area 51,���� NGSA SF ]. ')
			sampSendChat('/an '..id..' ���������� ���������� ��� ��� �� �������� �� ���� NGSA ����� ��������� ����,���� �������� �� ���� �� ���� ����.')
			sampSendChat('/an '..id..' �� NGSA Area 51 ���� ��������� ���� ����� ������� �� �������� �� �����.')
			sampSendChat('/an '..id..' ������ ��� �������� ������ �� ���� NGSA ����������.')
			sampSendChat('/an '..id..' ����� ����� ���� ��� ����� ������� � ���� � ������ �� [ H ], ����� �������� � ��������.')
			sampSendChat('/an '..id..' ����� �������� ���� � ������������ � �������� ��� ����� ������ � ��������� ����... ')
			sampSendChat('/an '..id..' ...� ������ ���������� ������ ALT + ���. ')
			sampSendChat('/an '..id..' � ������ ���� �� ������� ���� [ N >> ����� ]')	
		end)
	end, '�������� � ���, ��� ������ ���������� � ��� �� �����.' },

	['hhelp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ����� �� ��������Ż [ /hhelp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ��������� ����� �� ������� ��� � ���, ��� ����� ��� ������.')
			sampSendChat('/an '..id..' ����������, ������������� ��������� � ������� ��� ��� ���.')
		end)
	end, '����� �� ��������Ż' },

	['hcl'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������� ��. [ /hcl ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �������/������� �������� ����� ���� ����������� ���������. ������ - ������ ����� ����.')
			sampSendChat('/an '..id..' ����� �������/������� ������ ���������, ���������� ��������� [ /car � ���������� ������ ].')
			sampSendChat('/an '..id..' ����������� �� ��������� �����������/����������� ����� �������� - [ /lock ].')
			sampSendChat('/an '..id..' ������� ��������� ����� ����������� ����������.')
		end)
	end, '�������� � ���, ��� ������� ��.' },

	['hdrug'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������� ����������. [ /hdrug ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id) 
			sampSendChat('/an '..id..' ������� ���������� �������� �� ������ ����� ������. ')  
			sampSendChat('/an '..id..' [ N >> ������ �� ������� ������� �� ������ �������,����� ������ �� $ ����� ��������� ].') 
			sampSendChat('/an '..id..' ����� �� ������ ������� ����������� �������� [ /gps >> ������ >> ׸���� ����� ].') 
			sampSendChat('/an '..id..' ��� �� ����� ������� ����������� ���� ����� /shop � ����� ����� �����.') 
			sampSendChat('/an '..id..' �� ������ ��� ��� ����� ���� ����� ������� � �������� � ������.')
		end)
	end, '�������� � ������� ����������.' },

	['carh'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ���� ����� ����� ��� ����. [ /carh ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��������� ����� ���������� �� ���� �����.')
			sampSendChat('/an '..id..' ���������� ���� ��� ��������� ����� �� ��� �� ������.')
		end)
	end, '�������� � ���, ��� ���� ����� ����� ��� ����.' },

	['hst'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������� ����� ���. [ /hst ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����������� �������� ����� ��� ���������c� ��� ������ ���� 200+. [ /skill ]')
			sampSendChat('/an '..id..' ����� �������� ����� ���, �������������� �������� [ /styles ].')
		end)
	end, '�������� � ���, ��� ������� ����� ���.' },

	['no'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ���. [ /no ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���.')
		end)
	end, '���.' },

	['yes'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ��. [ /yes ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��.')
		end)
	end, '��.' },

	['hcall'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ��������� � ��������. [ /hcall ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������� �������� � ���� ������� [ /ph ], ����� � ���� �������� ����� �������.')
			sampSendChat('/an '..id..' ����� ����� ��������� ������ ��� �����. ������ ����� ������ - [ /number id ].')
			sampSendChat('/an '..id..' ��� ������ �������� ����� - ������� ��, �� ������ ������� ������� ������.')
		end)
	end, '�������� � ���, ��� ��������� � ��������.' },

	['wa'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ������� ��, ��� ��������� ��� ��������������. [ /wa ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �� ��������� �� ��������� ������ ���������, ��������.')
		end)
	end, '������� ��, ��� ��������� ��� ��������������.' },

	['hradio'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ��� ��������� � DJ. [ /hradio ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ����� � �������� ����������� - [ /radio � ��������� � DJ ].')
			sampSendChat('/com '..id)
		end)
	end, '��� ��������� � DJ.' },

	['hrp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ������� �� �����. [ /hrp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �� �������� ������� ������������� �� ����� ���� �����. ���������� ������ ��� ������� �����.')
			sampSendChat('/com '..id)
		end)
	end, '������� �� �����.' },

	['hundress'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������ ����. [ /hundress ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ���� ����� ����� ���� ������, ������� � ���������[N].')
			sampSendChat('/an '..id..' ������� ���� ������ � ���������, ������� �� �� 2 ����.')
			sampSendChat('/an '..id..' �����! �� �����.')
		end)
	end, '�������� � ���, ��� �������������� ���������� � ������ ���.' },

	['hgun'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� � ��� ����� ������. [ /hgun ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ��� ���������� ������ �� ������ �� ������ ����� ���������� ��� � �������� ������.')
			sampSendChat('/an '..id..' ���������� ����� �� �����, ����� � ��������� � � ������ ���� �������...')
			sampSendChat('/an '..id..' ...����� ������ "�����", ������ ������ ���-�� ������ � ������.')
		end)
	end, '�������� � ���, ��� � ��� ����� ������.' },

	['hlid'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������: �������� � ������. [ /hlid ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������������� �� ����� ���� ����� �� ���� ������.')
			sampSendChat('/an '..id..' ���������� � ���� �������� � ������ �������, ���� �������� �����.')
		end)
	end, '�������: �������� � ������.' },

	['tune'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � �������. [ /tune ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���������� ������ �� ���� ���������� �� ������ � �����������. �����, ��� ������ ��� ...')
			sampSendChat('/an '..id..' ... ����������� ������, ��� � ������ ����������. ����������� GPS, ���� ����� ��������� ������.')
			sampSendChat('/an '..id..' [ /gps � ������ � ������������ ���������� � ���������� �� | �� | �� ]')
			sampSendChat('/an '..id..' ����� ������������ SPORT-����� ������� - [ ������ + 2 ].')
		end)
	end, '�������� � �������.' },

	['hrep'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �������� ������. [ /hrep ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���� ��������� �������� �������� ���� ���������:')
			sampSendChat('/an '..id..' ������ - ������� � ����� ������� ���� Pay&Spray. ������ ����� ����������.')
			sampSendChat('/an '..id..' ������ - ��������������� �������� �����������.')
			sampSendChat('/an '..id..' [ /gps � ������ � ������������ ���������� � ���������� �� | �� | �� ]')
			sampSendChat('/an '..id..' ������ - ������� � ������ ���������� � ������������ - [ /bonnet ].')
		end)
	end, '�������� � ���, ��� �������� ������.' },

	['hwarn'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������. [ /hwarn ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �� ������� ���� 3 ���� WARN.')
			sampSendChat('/an '..id..' ������ ������� WARN ������� ������ ��� �� ������������.')
			sampSendChat('/an '..id..' ������ GunWarn - ������� ������������ ��� ������������� ������ �� ����������� ����.')
			sampSendChat('/an '..id..' ������ GameWarn - ������� �� ��������� ��� �������� �� �������.')
			sampSendChat('/an '..id..' GunWarn � GameWarn ������ ����� ����� [ /donate ]')
			sampSendChat('/an '..id..' � ��� ������� Warn ����� [ /donate >> ������ �������� >> ����� Warn ].')
		end)
	end, '�������� � ������.' },

	['promo'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ����������. [ /hpromo ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ����� ��������?')
			sampSendChat('/an '..id..' �������� - ��� ����. ���, ������� ��� ��� ������, ������� � �.�.')
			sampSendChat('/an '..id..' � ����� ���������� ����� ������ � ����������� ������ ������� - [ vk.com/pearsproject ].')
			sampSendChat('/an '..id..' ����� ������ �������� ����������� - [ /mm � �������� ].')
			sampSendChat('/an '..id..' �� ������ ������ ����������� ���������� ���.')
		end)
	end, '�������� � ����������.' },

	['hfam'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �������� �����. [ /hfam ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ���������� �� ����� ���������� ������ - [ /leavefam ]. ')
		end)
	end, '�������� � ���, ��� �������� �����.' },

	['hmol'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������� �������� ��������. [ /hmol ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� �������� �������� �������� ��� �����������: ������ ������� � ...')
			sampSendChat('/an '..id..' ... ������ �������� � ��������. ������ ���� � ������������ � ���������� �������.')
			sampSendChat('/an '..id..' �������� ����� ��������� �� ����� ��������. [ /fillkani ]')
			sampSendChat('/an '..id..' ����� ������� ������� - ������ �������� �� ������ ������� � ����� ���������.')
			sampSendChat('/an '..id..' �� ��������� � �������� �������, �� �� ���������� ���������!')
		end)
	end, '�������� � ���, ��� ������� �������� ��������.' },

	['hjob'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� ���� �� ������� (� �.�. � ����������). [ /hjob ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���������� ������ ����� - [ /job ].')
			sampSendChat('/an '..id..' ��� ������ �������� � ������� ������. ������, ��� Moon One ��� ����������� 3-�.')
			sampSendChat('/an '..id..' �� ����������� ������������� ����� ������ ����� ���������.')
			sampSendChat('/an '..id..' �� ������ ������������ � �������? �������� ��� ����������� ������ ������ ��� ����������.')
		end)
	end, '�������� ���� �� ������� (� �.�. � ����������).' },

	['hiznas'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � �������� ��� �������������. [ /hiznas ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ������ ��������� � ��� ��������� ��������� �������.')
			sampSendChat('/an '..id..' [ /iznas ] ��� [ /vrot ].')
			sampSendChat('/an '..id..' ���������, ����� ������� � ��� ���� ����� - �� �����.')
		end)
	end, '�������� � �������� ��� �������������.' },

	['hresp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �� �� ������� ��� ����. [ /hresp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������������� �� ����� ������������ ���� ��������� �� �������.')
		end)
	end, '�������� � ���, ��� �� �� ������� ��� ����.' },

	['carkey'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �������� ����� �� ����. [ /carkey ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �������� ����� �� ������� ���������� ����� ��������� �������:')
			sampSendChat('/an '..id..' [ /car � ��������� ���� ������� ���� � ���� ����� ].')
		end)
	end, '�������� � ���, ��� �������� ����� �� ����.' },

	['jobp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ����� ���� ������ ��� [ /jobp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' JOB - ��� ���� ������. ������ ������ �� �� ���������� �������� ���� ��������.')
			sampSendChat('/an '..id..' ���������� ����� JOB ���������� �� �����, ���������� �� 1 ����� JOB.')
		end)
	end, '�������� � ���, ��� ����� ���� ������ ���' },

	['htime'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ����� ���������� �����. [ /htime ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���������� ����� ����� ��� ����, ����� ��������� ���� ����������.')
			sampSendChat('/an '..id..' ����������� [ /mm � ���������� ����� ]. ')
			sampSendChat('/an '..id..' ���������� ����� ����� ����������. [ /paytime ]')
		end)
	end, '�������� � ���, ��� ����� ���������� �����.' },

	['weed'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �������� ���������. [ /weed ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������ ��������� ����� �������� ������ �� �������.')
			sampSendChat('/an '..id..' ����������� - [ /maruxyana ]. ')
			sampSendChat('/an '..id..' �������� ����� ����� - 60 �����.')
		end)
	end, '�������� � ���, ��� �������� ���������.' },

	['sgun'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������� ������. [ /sgun ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id) 
			sampSendChat('/an '..id..' ��������� ������� ��� ������� ������ ���. ������� ������������ �� ������� ������.') 
			sampSendChat('/an '..id..' ������������ � ������ � � ����� �������.') 
			sampSendChat('/an '..id..' ����� �������� ������ ����������� ������� - [ /give ].')
			sampSendChat('/an '..id..' ������� ���� ������, �����, ���������� ������, ������� ������ ��������.')
			sampSendChat('/an '..id..' ���������� ������ ������.') 
			sampSendChat('/an '..id..' ����������: ������������� �� ����� ��������������� �� ���������� ������.') 
			sampSendChat('/an '..id..' ���� �� ������ �������� - ����� � ���� �� �������. ��� ��������. ') 
		end)
	end, '�������� � ������� ������.' },

	['punish'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���������� �������������� ����������. [ /punish ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id) 
			sampSendChat('/an '..id..' ��� ������������ ������ �� ��, ��� ����, ���������:') 
			sampSendChat('/an '..id..' ��������� �� ������������ ����� � �� (�������� ����� ����� �������) �������� ������ ...') 
			sampSendChat('/an '..id..' ... ����� ��������� ������ (������������ �������) � ������. ') 
			sampSendChat('/an '..id..' ����� ���������, ���: ��, ��, ��, ��� � ��. ����� ���������� � ��� ��������� ������ ...')
			sampSendChat('/an '..id..' ... �� ���������� ��������������.') 
			sampSendChat('/an '..id..' ����� ���������, ��� ��� � ����������� � ���� ������� - �� ���������.')
			sampSendChat('/an '..id..' �� �� ����� �������� ������ �� �� ��� �������� �� ��, ��� �� ����������� ���� �����.')
			sampSendChat('/an '..id..' ����� ��������� ������ ������ ���� ��������. ��� ������������� ��������� ������ ������.')
		end)
	end, '�������� � ���������� �������������� ����������.' },

	['hnal'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������� � �������. [ /hnal ID ]', 0xC1C1C1)end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ���������� � ������� � ������� �������� � ���� - [ /nalog ].')
			sampSendChat('/an '..id..' �������� ������ � ������ ����� � ����� ���������.')
			sampSendChat('/an '..id..' � ������ �������� �������, ���� ��������� ������������ ������.')
		end)
	end, '�������� � ������� � �������.' },

	['hfish'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� ���� � �������. [ /hfish ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������ ������ ������ ���������� ������� � �������� �����. [ /job ]')
			sampSendChat('/an '..id..' ��� �� ������� ������ ������ [ /ydo ], �������� ������ ��� ������ �� � �������� �����ܻ.')	
			sampSendChat('/an '..id..' �������� ����� ��� � �����, ��� � �� ����, ��������� ������������ ��������.')
			sampSendChat('/an '..id..' ����� �������� ������ �������������� �������� - [ /fish ].')
			sampSendChat('/an '..id..' ������� ���� ����� � �����, ������� ��������� �� ����� � �������� �����.')	
		end)
	end, '�������� ���� � �������.' },

	['hshark'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� ���� � ����� ����. [ /hshark ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������ ������ ����� ���� ���������� ������� � �������� �����. [ /job ]')
			sampSendChat('/an '..id..' �� �������, ������� � ������� ��� � ������ ��� ������ ��� ������� ����.')
			sampSendChat('/an '..id..' �� ����� ��������� Reefer [ /agetcar ] � ������������� �� �����, ������� �������� �� �����.')
			sampSendChat('/an '..id..' ����� ��������� ����� ������� ����������� ����� ��������� ������� ������ �����. [ /skill ]')
			sampSendChat('/an '..id..' ������ �� ����� ����������� - [ /shark ] � ������ �����.')
			sampSendChat('/an '..id..' ������ ����� - ������������� � �����, ��� �������� �� �����.')
		end)
	end, '�������� ���� � ����� ����.' },

	['harh'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� ���� �� ������ ���������. [ /harh ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������ ������ ���������, ���������� ������� �� ��������. [ /job � ���������� ]')
			sampSendChat('/an '..id..' ��� �� ������ ������� ���������� ���� [ /skill ], ������ ������� ���� � ���������.')
			sampSendChat('/an '..id..' ��� ����� ������� ������. ��� �������� - �������� ���.')
			sampSendChat('/an '..id..' ��������� ��������� ����� ������ ��� ������������� ��������, ����� ���, ��� ������� ��������.')
			sampSendChat('/an '..id..' ����� �������� �� ������� � ���-�������, �������������� GPS. [ /gps � ������ � ������� ]')
			sampSendChat('/an '..id..' ������ �������� �������� - ������������� �� �������� � �������� ���� ������.')
		end)
	end, '�������� ���� �� ������ ���������.' },

	['arp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� ��, ��� ������ �� ����������� � ��. [ /arp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������������� �� ����������� � ������� ������� ����.')
		end)
	end, '�������� ��, ��� ������ �� ����������� � ��.' },

	['hlaw'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������� ��������. [ /hlaw ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������ �������� - ��� ����� ��������� � ���.')
			sampSendChat('/an '..id..' ����������� [ /lawyers ] ���� [ /online � �������� ], ����� ���������� ������ ���������.')
			sampSendChat('/an '..id..' ������� ����� �������� - ��������� � ��� �� ��������.')
			sampSendChat('/an '..id..' ��������� ������� - [ /ph ] � CALL � ������� ����� � ������� CALL � ������ ����.')
		end)
	end, '�������� � ���, ��� ������� ��������.' },

	['htax'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������� �����. [ /htax ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ������ ����� ��� ���������� ������� ���������:')
			sampSendChat('/an '..id..' ������� ������� [ /ph ] [ Y ] >> ������� >> ������� �����')
		end)
	end, '�������� � ���, ��� ������� �����.' },

	['hanim'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������� �� �������. [ /hanim ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������������� �� ����� ���� ��������, �������������� �� �������.')
			sampSendChat('/an '..id..' ����������� [ /anim].')
			sampSendChat('/an '..id..' ��� �������� ������������ ���, ������� ������ ��������������.')
		end)
	end, '�������� � ������� �� �������.' },

	['golod'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������. [ /golod ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���� �� ����������� ������, ��� �� �������. [ /potreb ]')
			sampSendChat('/an '..id..' ������� ��������� ���������� � ����������.')
			sampSendChat('/an '..id..' [ /gps � ������ � ���������� ].')
		end)
	end, '�������� � ������.' },

	['hquest'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � �������. [ /hquest ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ���������� ������ ��������� ������� ������.')
			sampSendChat('/an '..id..' � ����� ������ ������ �������� ��� ���.')
			sampSendChat('/an '..id..' ��������� ����� - ��� ��������� ������������ ���� � ���������.')
		end)
	end, '�������� � �������.' },

	['hcolor'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ����� ����� ��� ����. [ /hcolor ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������������� �� ����� ���� ������ ��� ����� � �������� ����������.')
			sampSendChat('/an '..id..' �� �������������� ������ ����� ������ ��� ���� ��� �� � ���������.')
			sampSendChat('/an '..id..' ����������� - [ /cvet | /colors ] ��� ������ ������ ��� ����.')
		end)
	end, '�������� � ���, ��� ����� ����� ��� ����.' },

	['hnrpnick'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������� ����� ���. [ /hnrpnick ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������� ����� ��� �� ������ ��������������, ��� ������� ��� ��� LVL �� ���� 2.')
			sampSendChat('/an '..id..' ����������� [ /donate � ������ �������� � ������� ���-���� ].')
			sampSendChat('/an '..id..' ��� ������ ��� ��� ����� ����������.')
		end)
	end, '�������� � ���, ��� ������� ����� ���.' },

	['chips'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ����� GOLD-�����. [ /chips ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Gold-����� ����� ������ ������ �� ������ [ /donate ].')
			sampSendChat('/an '..id..' 1 ����� ������ = 4000 Gold-�����. �� ������ �������� �� ������ ��� ������� �����.')
			sampSendChat('/an '..id..' Gold-����� �������� ������������ ������ ��� ������.')
			sampSendChat('/an '..id..' ������� [ /gold ], ����� ������������ Gold-����� � �������� ������.')
			sampSendChat('/an '..id..' ���� �� ��������� Gold-����� � �������� ������ - ������� ����� � ������� ������.')
		end)
	end, '�������� � ���, ��� ����� GOLD-�����.' },

	['hob'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ������ ����. [ /hob ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� ������ ���� �������� ����������� - [ /obisk ].')
			sampSendChat('/an '..id..' ���� ������� � ������ 30 ������ ����� ����, ��� ������ �����.')
			sampSendChat('/an '..id..' ���� ���� �� ���������� ������ - ������ 30 ������ ��� ������.')
		end)
	end, '�������� � ���, ��� ������ ����.' },

	['antp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ��� �� ���������������. [ /antp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ������ ������� ������������� ����������������� � ���.')
			sampSendChat('/an '..id..' ��� ������ - ������� ���� ��������, ����� ���� � ��.')
			sampSendChat('/an '..id..' ������ ����� ����� ������������� �����, ��� ����������� �� ������ �������.')
		end)
	end, '�������� � ���, ��� ��� �� ���������������.' },

	['hboot'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ����������������� � ����������. [ /hboot ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id..' ')
			sampSendChat('/an '..id..' ��� �������������� � ���������� ���������� �����������: [ /boot ].')
			sampSendChat('/an '..id..' � �������� ����� ������ ��� ������, ���������, ����� � ������������, ��� � �����.')
			sampSendChat('/an '..id..' ������, ���� ������ ��������� - �� ��������� ���������� �� ���������.')
		end)
	end, '�������� � ���, ��� ����������������� � ����������.' },

	['hkid'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �������� �����. [ /hkid ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id..' ')
			sampSendChat('/an '..id..' ��������! ����� ������ ���������, ��������� ��.')
			sampSendChat('/an '..id..' ��������� ����� ������� ������������ ������������ �� 3-� �������.')
			sampSendChat('/an '..id..' ��������� ��� ������� �� ������ ���� �������� �� �����.')
			sampSendChat('/an '..id..' ����� ������������� ������ ����������� ������� [ /ko id ]')
			sampSendChat('/an '..id..' �������� � �������� - [ N >> �������� >> ����� ����� ����� ��������� ������� ����� ������ � ������� (�������) ]')
			sampSendChat('/an '..id..' �������: ������� ������ ���� ����� � ���������� ����.')
			sampSendChat('/an '..id..' ������� ������ - [ /tie ] ,������ ����� [ /meshok ���� /bag id ]')
		end)
	end, '�������� � ���, ��� �������� �����.' },

	['idk'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������, ��� � ��� ��� ������ �� ���� ������. [ /idk ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' � ������������� ��� ������ �� ��� ������.')
		end)
	end, '�������, ��� � ��� ��� ������ �� ���� ������.' },

	['hdays'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � 7Days. [ /hdays ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' 7Day - ��� ������� ������� ��� ��������� ��������!')
			sampSendChat('/an '..id..' ������� ������: ��������� ��������� 5 ������� ������, �� ���������� 7 ����, � �����:')
			sampSendChat('/an '..id..' �� 8-� ���� �� �������� - $100.000. �� 9-� - 500 ���. ����������� �������.')
			sampSendChat('/an '..id..' �� 10-� ���� ��� ������� 50 ����� ������!. ����� 10-�� ��� ������� ������������ ...')
			sampSendChat('/an '..id..' ... � �� ������� ������ � ������ ������.')
			sampSendChat('/an '..id..' ��������, ���������� �� ����� �� ��� - �� �������������.')
		end)
	end, '�������� � 7Days.' },

	['hfindcar'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ���������� ����� ������. [ /hfindcar ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �������� ���� ����������? ���������, ��� �� � ��� ������ ���� - [ /stats ].')
			sampSendChat('/an '..id..' ���� ����������? ���������� ����� ��� �� ����� - [ /car � ����� ��������� �� ����� ].')
			sampSendChat('/an '..id..' ���� ���� � ����������, �� ��� ��� �� �����? ������� �� ��������/� ������ [ /loadcar ].')
			sampSendChat('/an '..id..' ���� �� ���������� ���� � ���������� - ���������� ��������� 24 ���� ��������� �������.')
			sampSendChat('/an '..id..' �� �������? ���� � ���������� ID ���� (���������� ������) ����� 2000, ��...')
			sampSendChat('/an '..id..' ...���������� � ���� �������������� �� ����� ������.')
			sampSendChat('/an '..id..' Pears Project � ����������� ������ � �������������� ������� �������� [ 1 ������ ]')
		end)
	end, '�������� � ���, ��� ���������� ����� ������.' },

	['philin'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ��������� � ������. [ /philin ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ������� �������� ���������� � �� ������� - Cardinal Reveal [ vk.com/philinos ].')
		end)
	end, '��������� � ������.' },

	['plates'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� �������� ������ �� ���������. [ /plates ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ����� �������� ���������� ������ �� ���� ���������, ��� ����...')
			sampSendChat('/an '..id..' ...�������� � ����������� �����������, ��������� ��������� �����...')
			sampSendChat('/an '..id..' ...������� ��� ������. ��� ����� 10.000$')
		end)
	end, '�������� � ���, ��� �������� ������ �� ���������.' },

	['hgryz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������� ������ ��������������. [ /hgryz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������������� �� ����� ���-���� �������� �� ����� ��������������.')
			sampSendChat('/an '..id..' ��� ����������� �������������, � ������������ ��������������.')
			sampSendChat('/an '..id..' ����� ��� ����������� ������� ����, ��� � ������� �����.')
		end)
	end, '�������� � ������� ������ ��������������.' },

	['fuck'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: ������� � ����. [ /fuck ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' �� ������ ������ � ������������� �����. ��� �����, ��� ����.')
			sampSendChat('/an '..id..' ������ ����� �� ������ ��� ������, ����������, ������� ���� ����� �� ��������.')
		end)
	end, '������� � ����.' },

	['hmarry'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ��������������. [ /hmarry ID ]', 0xC1C1C1)end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� �������������� ��� ����������� ����������� ������. [ /gps � ������ � ������������ ]')
			sampSendChat('/an '..id..' ��������� �� - ������������� � �������. [ /gps � ������ � ������� ].')
			sampSendChat('/an '..id..' � ���� ��, ��� ����������� ���������. ���������� ������, ���� �������� ���� �����.')
			sampSendChat('/an '..id..' [ /propose - ������� ����������� | /witness - ������� ��������� | /divorce - ���������� ]')
		end)
	end, '�������� � ��������������.' },

	['hvoice'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � VoiceChat. [ /hvoice ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' VoiceChat - �����������, ����������� ������������ ������� ���������� ���� � ����.')
			sampSendChat('/an '..id..' pears-project.com - ������ �� ������� ��������� ����������� ����� ��� ��� ������.')
			sampSendChat('/an '..id..' ����������� ������� [ B ] ��� ��������� ���������� ����.')
		end)
	end, '�������� � VoiceChat.' },

	['unpriz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ��������� � �����������. [ /unpriz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ������� � ������� ��� ����� ������������� ����� �����, ���� ������������ �������.')
			sampSendChat('/an '..id..' ������, ����-�� ��� �� ��� � ���� - [ /priziv � ���������� ������ ]. ����� ��������� ���.')
			sampSendChat('/an '..id..' �����, ���������� � ���� ����� ����� ����������� [ /v ], ���� �������� ��� [ /w ID ].')
			sampSendChat('/com '..id)
		end)
	end, '�������� � ���, ��� ��������� � �����������.' },

	['hact'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������. [ /hact ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ��� ����, ����� �������� ����� 3D-�������� �������������� [ /action ].')
			sampSendChat('/an '..id..' ���� �� ������� ���������, ������� ��������� ��������� �������:')
			sampSendChat('/an '..id..' ��� ������ ����� ���������� ��������, �� �������� MG � ����� �������� � ����������.')
			sampSendChat('/an '..id..' ������: [���������� �� ���������� ������] ������ ������������� ���������� ������, ��������: 415-051. ')
			sampSendChat('/an '..id..' � ��������� ������� ��� ������������� ��� �������� �������� �� �������� ����.')
			sampSendChat('/com '..id)
		end)
	end, '�������� � ������.' },

	['hunits'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ������ Unit. [ /hunits ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ')
			sampSendChat('/an '..id..' ����� � �������� ������ �� �������. ������������� �������� ��������� �������� � �����������.')
			sampSendChat('/an '..id..' ������ �������� ��� ���������� ���� �� ������� ��������� �� ��� ������� ������ - �������.')
			sampSendChat('/an '..id..' �����, ��� �������� �� ������ ���� � ������������, ������� �� �������� �� ����� �������.')
			sampSendChat('/an '..id..' ���������� ����������� ������ ������������� ������� �����������. �� ����� �������� �� ������.')
			sampSendChat('/an '..id..'  1 ���� = $1. ������� ��� ����� � �����, ����, � ������� �������� - [ /notebook ].')
			sampSendChat('/com '..id)
		end)
	end, '�������� � ������ Unit.' },

	['hsdel'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: �������� � ���, ��� ���������� ������. [ /hsdel ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ')
			sampSendChat('/an '..id..' ������ �� ��������� ���������� � ������ ������ - [ /gps � ������ � ����� ������ ].')
			sampSendChat('/an '..id..' ������� �����-���� �������� �� ������ ����� ���������, ����� ��� �� �����.')
			sampSendChat('/an '..id..' [ /gps � ������ � ����� Los Santos / ������ ����� ].')
			sampSendChat('/an '..id..'������������� �� ��������� ������� � �� ������������ ���� �������, ��� �� ���������������.')
			sampSendChat('/com '..id)
		end)
	end, '�������� � ���, ��� ���������� ������.' },

	['fupd'] = { function()
		sampShowDialog(lox, "�������������", '�� ������������� ������ �������� ������?', "��", "���", 0)
		lua_thread.create(function()
			while sampIsDialogActive(lox) do wait(0) end
				local res, bu, li, inp = sampHasDialogRespond(lox)
				if res and bu == 0 then
				sampAddChatMessage('�� ���������� �� ����������', 0xC1C1C1)
				elseif bu == 1 then
				upd()
				end
				return
			end)
		
	end,'�������� ������.' },

	
	--[[['som'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: TEST EBAT', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/b test '..id) 
		end)
	end, 'TEST' },
]]
}

cmds['yes'] = cmds['da']
cmds['no'] = cmds['net']

local current = 0
local dialogid = 44444
local cmds_max = 20
local par = {}
local fastupd = false

for i, k in pairs(cmds) do
	par[#par + 1] = i
end

local count = math.ceil(#par / cmds_max)

-- FUNCTION's

local function parseCmds(b1, b2)
	local n = ''
	for i = 0 + cmds_max * current, cmds_max * ( current + 1 ) do
		if par[i - 1] then
			n = n .. '{0088ff}/' .. par[i - 1] .. ' {ffffff}- ' .. cmds[par[i - 1]][2] .. '\n'
		end
	end
	sampShowDialog(dialogid + current, '{0088ff}fEXP | {ffffff}' .. current + 1 .. ' �������� �� ' .. count, n, b1, b2, 0)
end

--- EVENT's

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(0) end

	sampAddChatMessage('[ fEXP ]: {ffffff}������ ��������. ������: 1.3. �����: imring, �������: Template. ��������� ������ ������ [ /fcmds ].', 0x0088FF)

	sampRegisterChatCommand('fcmds', function()
		current = 0
		parseCmds('�����', '')
	end)
	sampRegisterChatCommand('finfo', function(text)
		if text == '' then return sampAddChatMessage('[ fEXP ]: {ffffff}������������: /finfo [�������].', 0x0088FF) end
		if cmds[text] then sampAddChatMessage('[ fEXP ]: {ffffff}' .. cmds[text][2] .. ' [ /' .. text .. ' ID ]', 0x0088FF)
		else sampAddChatMessage('[ fEXP ]: {ffffff}������ ������� ����.', 0x0088FF) end
	end)

	while true do wait(0)
		if isKeyJustPressed(VK_0) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() then
			sampSendChat("/rt")
		end
		local id = sampGetCurrentDialogId()
		local res, button, list, input = sampHasDialogRespond(id)
		if res then
			if id - current == dialogid then
				local b1, b2 = '�����', '�����'
				current = current + ( button == 1 and 1 or -1 )
				if current > -1 and current < count then
					if current == 0 then b2 = ''
					elseif current + 1 == count then b1 = '�������' end
					parseCmds(b1, b2)
				else current = 0 end
			end
		end
	end
end

function upd()
		downloadUrlToFile( "https://www.dropbox.com/s/5rrrvbos8pt2rd8/fEXP.lua?dl=0",  "moonloader/fEXP.lua")
		sampAddChatMessage("���������� [!]", 0x0088ff)
		wait(900)
		local dwn = [[{ffffff}������ �������, ��������� ������� � ���� ����� ������������ �������.]]
		sampShowDialog(16959, "{0082ff}���������� ", dwn, "{ffffff}�������", "", 0)
end

local send_cmd = false
function samp.onSendCommand(str)
	--[[if send_cmd then 
		send_cmd = false
	else]]
		local cmd, params = str:match('/(%S+)%s*(.*)')
		if not cmd then cmd = str:sub(2) end
		local func = cmds[cmd] and cmds[cmd][1]
		if func then 
			local b = func(params or '')
			send_cmd = true
			if not b then return false end 
		end
	end
--end