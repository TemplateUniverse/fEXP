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
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о повышении уровня. [ /hlvl ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' За каждый отыгранный час Вам дается 1 EXP.')
			sampSendChat('/an '..id..' Чтобы его получить - нужно отыграть ровно 60 минут на сервере.')
			sampSendChat('/an '..id..' Узнать, сколько времени осталось до получения PayDay - [ /time ].')
			sampSendChat('/an '..id..' Для повышения уровня нужно набрать определенное кол-во EXP. [ /stats ]')
			sampSendChat('/an '..id..' Как только наберется нужное кол-во EXP, Ваш уровень автоматически повысится.')
		end)
	end, 'Поведать о повышении уровня.' },

	['hv'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о военном билете. [ /hv ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' [ /voenhelp ]')
			sampSendChat('/an '..id..' Получить военный билет можно лишь натаскав нужное кол-во ящиков в призыве.')
			sampSendChat('/an '..id..' Нужная информация о призыве - [ /invites » Призыв ] [ /gps » Организации » Нац. Гвардия ].')
			sampSendChat('/an '..id..' Военный билет нужен для того, чтобы вступить в любую законную организацию.')
			sampSendChat('/an '..id..' Также, без него, Вы не сможете купить оружие в Ammu-Nation.')
		end)
	end, 'Поведать о военном билете.' },

	['dn'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о работе дальнабойщика. [ /dn ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для работы дальнобойщиком Вам необходимо иметь 5.000 умения на автомобиль. [ /skill ]')
			sampSendChat('/an '..id..' Езжайте в транспорную компанию [ /job ] и арендовывайте автомобиль [ /agetcar ].')
			sampSendChat('/an '..id..' Смотрите список грузов [ /gryz ]. ИМЕЙТЕ ВВИДУ, что если Вы арендовали самый грузоподъемный ...')
			sampSendChat('/an '..id..' ... транспорт, он не будет возить маленькие заказы. А большие очень быстро разбирают!')
			sampSendChat('/an '..id..' Например, если взяли заказ на 33 тонны, его не будет в списке пока не довезут до конца. ')
			sampSendChat('/an '..id..' После того, как Вы взяли заказ - Вам позвонит деспетчер и на радаре появится маркер.')
			sampSendChat('/an '..id..' Остаётся только следовать по маркерам. На одном Вы загружаете груз, на втором разгружаете.')
		end)
	end, 'Поведать о работе дальбаебщика.' },

	['hchs'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о Черном Списке. [ /hchs ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы вызвать меню Черного Списка, достаточно ввести [ /chs ]. Там можно узнать и цену выхода.')
			sampSendChat('/an '..id..' Хотите посмотреть, в каком из списков Вы, и на долго-ли? Воспользуйтесь [ /stats ].')
			sampSendChat('/an '..id..' Выйти из Черного Списка Без Права Выхода - невозможно, ни за какие деньги.')
		end)
	end, 'Поведать о Черном Списке.' },

	['hzol'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о золоте. [ /hzol ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Раскопать золото самому невозможно, можно его купить у игроков или же за реальные деньги.')
			sampSendChat('/an '..id..' Адекватный курс золота на сервере - от $7.000 до $15.000 за грамм золота.')
			sampSendChat('/an '..id..' Меню управление донатом - [ /donate ].')
		end)
	end, 'Поведать о золоте.' },

	['hitm'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать информацию о Хитманах. [ /hitm ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Хитманы - это скрытая организация, так же, как и секта.')
			sampSendChat('/an '..id..' Распространять любого рода информацию о них мы не будем.')
			sampSendChat('/an '..id..' Всю нужную информацию Вы можете найти на Форуме.')
		end)
	end, 'Поведать информацию о Хитманах.' },

	['hmoon'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о работе в NASA. [ /hmoon ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Отправиться на МКС Вы можете с базы NASA. [ /job » Экспедиция Moon One ]')
			sampSendChat('/an '..id..' Для полета на МКС требуется: 3 уровень, 500 силы, 1000 авиа. [ /skill ]')
			sampSendChat('/an '..id..' Там, пройдя мед.осмотр, Вы отправляетесь в ракету.')	
			sampSendChat('/an '..id..' Ракета отправляется в 20 минут каждого часа.')	
			sampSendChat('/an '..id..' Со станции МКС у Вас будет выбор: отправиться на Луну или на Марс.')
			sampSendChat('/an '..id..' На Луне Вы сможете: собирать данные с телескопов, чистить батареи, таскать булыжники.')
			sampSendChat('/an '..id..' А на Марсе: выращивать картофель, перерабатывать грунт, собирать данные телескопов.')	
		end)
	end, 'Поведать о работе в NASA.' },

	['hjb'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Сказать о том, чтобы подали жалобу на форум. [ /hjb ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Администрация не рассматривает жалобы через репорт, если нарушение уже было совершено.')
			sampSendChat('/an '..id..' Если Вы не согласны с наказанием от админа, или заметили нарушение другого игрока, то ...')
			sampSendChat('/an '..id..' ... подайте жалобу в соответствующий раздел на нашем форуме.')
			sampSendChat('/an '..id..' Наш адрес: forum.pears-project.com.')	
			sampSendChat('/an '..id..' Жалобы написанные НЕ ПО ФОРМЕ и БЕЗ ДОКАЗАТЕЛЬСТВ рассмотрены не будут.')				
		end)
	end, 'Сказать о том, чтобы подали жалобу на форум.' },

	['hh'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о постройке дома. [ /hh ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Материалы для стройки находятся на Лесопилке. [ /gps » Прочее » Лесопилка ].')
			sampSendChat('/an '..id..' Загружаете на погрузчик, выбрав подходящий дом, и везете его куда угодно.')
			sampSendChat('/an '..id..' Смотрите список свободных домов [ /houses ] и ставите дом [ /createhouse № ].')
		end)
	end, 'Поведать о постройке дома.' },

	['hm'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о веревке и мешке. [ /hm ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id) 
			sampSendChat('/an '..id..' Чтобы надеть/снять мешок на голову человека используйте - [ /meshok ID ].') 
			sampSendChat('/an '..id..' Связать человека - [ /tie ID ]. Развязать - [ /untie ID ].') 
		end)
	end, 'Поведать о веревке и мешке.' },

	['hz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как снять розыск. [ /hz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id) 
			sampSendChat('/an '..id..' Для того чтобы избавиться от звёзд розыска достаточно сдаться властям.') 
			sampSendChat('/an '..id..' Для этого нужно поехать в участок LSPD [ /gps >> Организации >> Фракции >> LSPD ].')	
			sampSendChat('/an '..id..' Также можно взломать базу данных SWAT, для этого вам нужен ноутбук [ /gps >> Организации >> Фракции >> SWAT ].')
			sampSendChat('/an '..id..' Вход в серверную находить на парковке SWAT.')
			sampSendChat('/an '..id..' Каждый PayDay спадает одна звезда розыска.')
		end)
	end, 'Поведать о том, как снять розыск.' },

	['hadm'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о лидерках и админках. [ /hadm ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Когда имеется нужда, Старшая администрация открывает выборы на ЛИДЕРОВ или ХЕЛПЕРОВ.')
			sampSendChat('/an '..id..' Об этом оповещается в общий чат и на форуме.')
			sampSendChat('/an '..id..' Подайте заявку, пройдите обзвон, и у Вас появится шанс занять желаемый пост.')
		end)
	end, 'Поведать о лидерках и админках.' },

	['hsex'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о сексуальности. [ /hsex ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Сексуальность - важный скилл.')
			sampSendChat('/an '..id..' За каждый уровень скилла Вам добавляют $1 в спермобанке. Максимальный уровень - 5000.')
			sampSendChat('/an '..id..' Прокачать его не сложно. Подходим к Шлюхе и ...')
			sampSendChat('/an '..id..' Найти ее можно у отеля Лос-Сантоса. [ /gps » Прочее » Аэропорт LS ]')
		end)
	end, 'Поведать о сексуальности.' },

	['hank'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о Хенке. [ /hank ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id..' ')
			sampSendChat('/an '..id..' Хенк может перебить Вам замки, дабы угнанный авто стал личным.')
			sampSendChat('/an '..id..' Используйте: [ /gps » Услуги » Обслуживание транспорта » Автосервис Хенка ].')
			sampSendChat('/an '..id..' Узнать цену автомобиля можно введя - [ /auto » Документы в бардачке ].')
			sampSendChat('/an '..id..' Продать угнанный автомобиль - нельзя.')
		end)
	end, 'Поведать о Хенке.' },

	['premium'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о ПЛАТИНОВОЙ випке. [ /premium ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Premium VIP [ 900 GOLD. ]:')
			sampSendChat('/an '..id..' - Время Действия: Бесконечная или временная')
			sampSendChat('/an '..id..' - Ускоренное увеличение всех навыков. [ /skill ]')
			sampSendChat('/an '..id..' - +1 Exp каждые 5 часов.')
			sampSendChat('/an '..id..' - Самостоятельно увольнение из любой организации. [ /leave ]')
			sampSendChat('/an '..id..' - Выделение рекламы [ /ad ] + Время Действия: 2 Часа.')
			sampSendChat('/an '..id..' - Возможность вызывать к себе личный транспорт бесконечное количество раз.')
			sampSendChat('/an '..id..' - Возможность закрывать личные сообщения. [ /togwh ]')
			sampSendChat('/an '..id..' Информация о всех VIP - /vip')
			sampSendChat('/com '..id)
		end)
	end, 'Поведать о ПЛАТИНОВОЙ випке.' },

	['hlink'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о группах ВК и форуме. [ /hlink ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id..' ')
			sampSendChat('/an '..id..' Сайт и форум проекта: pears-project.соm')
			sampSendChat('/an '..id..' Официальная группа в ВК: vk.соm/pearsproject')
			sampSendChat('/an '..id..' Подслушано проекта: vk.соm/pearspodslushano')
			sampSendChat('/an '..id..' Ссылки выше можно скопировать из документа chatlog.')
		end)
	end, 'Поведать о группах ВК и форуме.' },

	['otm'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать об отмычках. [ /otm ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы взломать авто Вам нужно купить отмычки в супермаркете [ /gps » Услуги ].')
			sampSendChat('/an '..id..' Попробуйте сесть в автомобиль организации, банды, мафии ...')
			sampSendChat('/an '..id..' ... и сами поймёте всю систему взлома. Личные авто взломать нельзя.')
			sampSendChat('/an '..id..' Внимание! Если Вы ошибетесь - Вы будете объявлены в розыск!')
			sampSendChat('/an '..id..' Продать угнанный автомобиль - нельзя.')
		end)
	end, 'Поведать об отмычках.' },

	['pri'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Закрыть вопрос. [ /pri ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/an '..id..' Приятной игры! <3')
			sampSendChat('/com '..id)
		end)
	end, 'Пожелать приятной игры.' },

	['hut'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как продать авто. [ /hut ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Не знаете, куда деть свой автомобиль?')
			sampSendChat('/an '..id..' [ /car » Информация о продаже ].')
		end)
	end, 'Поведать о том, как продать авто.' },

	['hkani'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о канистре. [ /hkani ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Воспользуйтесь канистрой, чтобы заправить свой транспорт.')
			sampSendChat('/an '..id..' На заправке: достаёте её [ /kani ] и наполняете [ /fillkani ].')
			sampSendChat('/an '..id..' После этого садитесь в авто и заправляете его на 20 литров [ /fillcar ].')
		end)
	end, 'Поведать о канистре.' },

	['hsp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, что слежу. [ /hsp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Начинаю наблюдение за игроком по Вашей жалобе.')
			sampSendChat('/an '..id..' Если нарушение уже произошло - Вы можете оставить жалобу ...')
			sampSendChat('/an '..id..' ... на нашем форуме в разделе «Жалобы».')
			sampSendChat('/an '..id..' Cпасибо за обращение, приятной Вам игры!')
		end)
	end, 'Поведать о том, что слежу.' },

	['hg'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как передать оружие. [ /hg ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы передать оружие используйте команду - [ /give ].')
			sampSendChat('/an '..id..' Введите айди игрока, затем, количество патрон которое хотите передать.')
		end)
	end, 'Поведать о том, как передать оружие.' },

	['hin'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о вступлении. [ /hin ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для вступления во фракцию необходимо иметь 2 уровень [ 8 часов в игре ].')
			sampSendChat('/an '..id..' После этого Вам открывается техническая возможность вступления.')
			sampSendChat('/an '..id..' Однако, у каждой фракции есть индивидуальные критерии на уровень и навыки.')
			sampSendChat('/an '..id..' Свяжитесь с лидером, чтобы вступить во фракцию.')
			sampSendChat('/an '..id..' Открытые/Закрытые наборы - [ /invites ]. Лидеры онлайн - [ /leaders ].')
		end)
	end, 'Поведать о вступлении.' },

	['hc'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о магазине одежды. [ /hc ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Купить аксессуары и одежду (скин) можно в Магазине одежды.')
			sampSendChat('/an '..id..' [ /gps » Услуги » Магазин одежды ].')
		end)
	end, 'Поведать о магазине одежды.' },

	['had'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о письме в углу. [ /had ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Письмо возле времени означает, что подали новую рекламу.')
			sampSendChat('/an '..id..' Просмотреть список обработанных реклам - [ /ad ].')
		end)
	end, 'Поведать о письме в углу.' },

	['hui'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать об увольнении. [ /hui ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы уволиться из фракции - обратитесь к своему лидеру.')
			sampSendChat('/an '..id..' Администрация не может увольнять игроков из фракции.')
			sampSendChat('/an '..id..' Вы можете уволиться самостоятельно, если у Вас есть Platinum VIP. [ /vipuninvite ]')
		end)
	end, 'Поведать об увольнении.' },

	['hcar'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о покупке авто. [ /hcar ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' [ /help ] » Как купить машину?')
		end)
	end, 'Поведать о покупке авто.' },

	['put'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Сказать, что запутался. [ /put ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Пожалуйста, не путайте!')
			sampSendChat('/an '..id..' «Вопрос» - это для вопроса. «Жалоба» - для жалобы.')
			sampSendChat('/an '..id..' «Просьба» - адекватная просьба к Администрации.')
		end)
	end, 'Сказать, что запутался.' },

	['pls'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, что не стоит просить в /dai. [ /pls ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Администрация не выдаёт: EXP, уровень, деньги, золото, подарочное время.')
			sampSendChat('/an '..id..' А также: ничего и никого не телепортирует, не следит за нелегальными сделками.')
			sampSendChat('/an '..id..' Исключение: проведение сделок по обмену.')
			sampSendChat('/an '..id..' Еще, мы не выдаем: скины, скиллы, оружие, хп, автомобили и прочие игровые ресурсы.')
			sampSendChat('/an '..id..' Приятной игры!')
		end)
	end, 'Поведать о том, что не стоит просить в /dai.' },

	['sr'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Извиниться за то, что не отреагировал на сервис вовремя. [ /sr ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Сожалею, что мы не смогли ответить Вам вовремя. Если обращение актуально - дайте знать.')
		end)
	end, 'Извиниться за то, что не отреагировал на сервис вовремя.' },

	['sad'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как подать объявление. [ /sad ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для подачи объявления Вам необходимо добраться до офиса CNN. Воспользуйтесь навигатором.')
			sampSendChat('/an '..id..' [ /gps » Организации » Фракции » CNN ]. Добравшись туда - войдите в здание.')
			sampSendChat('/an '..id..' Перед Вами будет комната с 3D пикапом, подойдите к нему и используйте [ /ad ].')
			sampSendChat('/an '..id..' Далее, выбирайте свободный слот и подавайте Ваше объявление. Его цена составит $1500.')
		end)
	end, 'Поведать о том, как подать объявление.' },

	['fu'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Сказать о том, что ты не можешь помочь. [ /fu ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Администрация не сможет Вам в этом помочь. Попробуйте решить эту проблему самостоятельно.')
		end)
	end, 'Сказать о том, что ты не можешь помочь.' },

	['slet'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Когда слетают дома. [ /slet ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Имущество неактивных игроков освобождается ежедневно в 19:30.')
			sampSendChat('/an '..id..' Посмотреть номера свободных построек - [ /houses ].')
		end)
	end, 'Когда слетают дома.' },

	['obr'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Неактуальное обращение. [ /obr ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Обрабатывая Ваше обращение, мы поняли, что оно уже неактуально.')
			sampSendChat('/an '..id..' Если это не так, или Вам нужна еще какая-либо помощь - дайте знать.')
		end)
	end, 'Неактуальное обращение.' },

	['bcar'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Где моя купленная тачка? [ /bcar ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..'  После покупки авто вам нужно быть ждать 24 часа реального времени, прежде чем, ваш автомобиль будет доставлен.')
			sampSendChat('/an '..id..' Узнать, появился-ли автомобиль на аккаунте - [ /stats ].')
			sampSendChat('/an '..id..' Если вы не хотите ждать 24 часа,вы можете доплатить 50.000$ в автосалоне и вам сразу его доставят.')
			sampSendChat('/an '..id..' Изначально автомобиль нужно будет забрать на ресепшне [ /gps >> Транспорт >> Автосалон ].')
			sampSendChat('/an '..id..' Не забудьте перепарковать ваш новый автомобиль в любое удобное для вас место [ /car >> ТС >> Припарковать транспорт ].')
		end)
	end, 'Где моя купленная тачка?' },

	['hpp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, что слежу. [ /hpp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Обрабатываю Ваше обращение.')
			sampSendChat('/an '..id..' Если нарушение уже произошло - Вы можете оставить жалобу ...')
			sampSendChat('/an '..id..' ... на нашем форуме, в разделе «Жалобы».')
			sampSendChat('/an '..id..' Если же игрок, указанный в Вашем обращении, остался безнаказанным ... ')
			sampSendChat('/an '..id..' ... значит собранных мной доказательств его нарушения недостаточно для наказания.')
		end)
	end, 'Поведать о том, что слежу.' },

	['rpr'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Отправить игрока в тему Восстановления. [ /rpr ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Обратитесь в тему восстановления на нашем форуме.')
			sampSendChat('/an '..id..' Pears Project » Технический раздел » Восстановление игровых ресурсов [ 1 сервер ]')
		end)
	end, 'Отправить игрока в тему Восстановления.' },

	['digg'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Как копать на археологии без текстдравов. [ /digg ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Если у Вас отсутствуют текстдравы песка, и видны только поле раскопок с артефактом, то:')
			sampSendChat('/an '..id..' Нажимая ЛЕВОЙ кнопкой мыши в разных местах, имитируйте раскопки.')
			sampSendChat('/an '..id..' Делайте это до тех пор, пока не откопаете артефакт.')
		end)
	end, 'Как копать на археологии без текстдравов.' },

	['hup'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать об улучшениях постройки. [ /hup ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Купленные Вами улучшения для постройки срабатывают тогда, когда Вы выходите из нее.')
			sampSendChat('/an '..id..' То есть, если Вы приобрели аптечку - она пополнит Вам ХП, как только Вы выйдите из постройки.')
			sampSendChat('/an '..id..' Бронежилет работает только для сотрудников гос. структур.')
			sampSendChat('/an '..id..' Опция «Рабочий шкафчик» позволяет законникам заступать на дежурство прямо из дома.')
		end)
	end, 'Поведать об улучшениях постройки.' },

	['hpark'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Как припарковать машину. [ /hpark ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы припарковать свою машину туда, куда Вам нужно, необходимо:')
			sampSendChat('/an '..id..' Сесть в нее и использовать комбинацию [ /car » Парковка ].')
			sampSendChat('/an '..id..' После этих манипуляций Ваш автомобиль будет появляться там, где Вы его припарковали.')
		end)
	end, 'Как припарковать машину.' },

	['wq'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Некорректный вопрос. [ /wq ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Ваш вопрос некорректен, попробуйте задать его иначе.')
			sampSendChat('/an '..id..' Пожалуйста, прежде чем подавать обращение - внятно его сформулируйте.')
		end)
	end, 'Некорректный вопрос.' },

	['hcp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Как узнать цены на авто. [ /hcp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Все цены транспорта представлены в автосалоне.')
			sampSendChat('/an '..id..' Достаточно приехать туда и войти в меню автосалона, чтобы узнать цену на автомобиль.')
			sampSendChat('/an '..id..' Используйте [ /gps » Услуги » Автосалон ].')
			sampSendChat('/an '..id..' Еще, цену можно узнать, сев в автомобиль и использовав - ...')
			sampSendChat('/an '..id..' ... [ /auto » Документы в бордачке ], при условии, что есть такая возможность.')
		end)
	end, 'Как узнать цены на авто.' },

	['ty'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Подлизать. [ /ty ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Спасибо за обращение, мы примем это к сведению.')
		end)
	end, 'Подлизать.' },

	['ok'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, что обращение было рассмотренно. [ /ok ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Ваше обращение было обработано.')
		end)
	end, 'Поведать о том, что обращение было рассмотренно.' },

	['okk'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Недостаточно док-в. [ /okk ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Ваше обращение было рассмотрено.')
			sampSendChat('/an '..id..' Если Вы подавали жалобу и игрок, на которого Вы жаловались, не был наказан ...')
			sampSendChat('/an '..id..' ... значит мы не увидели в его действиях какого-либо нарушения.')
			sampSendChat('/an '..id..' Если подобное вновь повторится - дайте знать.')
		end)
	end, 'Недостаточно док-в.' },

	['kt'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Как только, так сразу. [ /kt ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Как только, так сразу.')
		end)
	end, 'Как только, так сразу.' },

	['hl'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Некорректное обращение. [ /hl ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Ваше обращение некорректно.')
			sampSendChat('/an '..id..' Пожалуйста, прежде чем подавать обращение - внятно его сформулируйте.')
		end)
	end, 'Некорректное обращение.' },

	['hunt'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать об охоте. [ /hunt ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Отправиться на охоту. [ /job » Охота ]')
			sampSendChat('/an '..id..' Там Вы сможете купить оружие и спросить местонахождение животных у лесника.')
			sampSendChat('/an '..id..' Также, Вы можете арендовать ТС.')	
			sampSendChat('/an '..id..' После чего едете убивать оленя.')	
			sampSendChat('/an '..id..' После того как Вы убили животное, его нужно подобрать. Клавиша [ Y ]. ')	
			sampSendChat('/an '..id..' Мясо можно продать или съесть, приготовив его на костре.')	
		end)
	end, 'Поведать об охоте.' },

	['hs'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о системе скиллов. [ /hs ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Из лицензий у нас только права. Для всего остального у нас есть система навыков [ /skill ].')
			sampSendChat('/an '..id..' Силу вы можете прокачать в спортзале [ /gps >> Услуги >> Спортзал ].')
			sampSendChat('/an '..id..' Если нужно прокачать навык сексуальности, подойдите к девушке(боту)...')
			sampSendChat('/an '..id..' ...которая находиться рядом с отелем.')
			sampSendChat('/an '..id..' Египетский язык вы можете изучить на археологии [ /job >> Археолог ].')
			sampSendChat('/an '..id..' Навык моряка вы можете прокачать  [ /job >> Рыболов/Ловец Акул и Собиратель].')
			sampSendChat('/an '..id..' Остальное вы можете изучить в Образовательном Центре [ /gps >> Услуги >> Образование >> Образовательный Центр ].')
		end)
	end, 'Поведать о системе скиллов.' },

	['hy'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о языках. [ /hy ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Языки нужны для того, чтобы понимать других игроков и разговаривать на этих языках.')
			sampSendChat('/an '..id..' Говорить на другом языке Вы сможете только тогда, когда изучите его на все 100 процентов.')
			sampSendChat('/an '..id..' Если Вы переключите язык на другой, то те, у кого этот язык не изучен ...')
			sampSendChat('/an '..id..' ... не будут понимать то, что Вы говорите. [ /language ]')
		end)
	end, 'Поведать о языках.' },

	['hbenz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о перевозке бензина. [ /hbenz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для начала Вам нужно взять тягач с бензовозом на базе дальнобойщиков.')
			sampSendChat('/an '..id..' [ /gps » Прочее » База Дальнобойщиков], После чего поехать ...')
			sampSendChat('/an '..id..' ... на нефтеперерабатывающий завод [ /gps » Прочее ].')
			sampSendChat('/an '..id..' После загрузки тягача езжайте и сливайте бензин в колонку фракции.')
		end)
	end, 'Поведать о перевозке бензина.' },

	['pr'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о получении вод. прав. [ /pr ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы ездить на автомобиле, Вам нужно получить права.')
			sampSendChat('/an '..id..' Их цена $19.000. Отправлятесь в Автошколу - [ /gps » Услуги » Образование ]')
			sampSendChat('/an '..id..' Пройдите теоретический экзамен, площадку и город, чтобы получить свои права. ')
		end)
	end, 'Поведать о получении вод. прав.' },

	['hctaxi'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о такси. [ /hctaxi ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Купите шашку таксиста в супермаркете и начинайте работать.')
			sampSendChat('/an '..id..' Установить шашку возможно только на личный транспорт.')
			sampSendChat('/an '..id..' Зато абсолютно на любой, будь то автомобиль, мотоцикл или даже вертолёт.')
			sampSendChat('/an '..id..' Тариф за километр устанавливает таксист от $100 до $500. Просто используйте [ /gotaxi ].')
		end)
	end, 'Поведать о такси.' },

	['pobeg'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о побеге. [ /pobeg ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы сбежать из тюрьмы, Вам необходимо найти заточку ...')
			sampSendChat('/an '..id..' ... возле кроватей пишите [ /blade ]. На все 20 кроватей есть одна заточка.')
			sampSendChat('/an '..id..' После того, как кто-то её найдёт, она автоматически перереспавнивается.')
			sampSendChat('/an '..id..' Если Вы нашли заточку - Вам нужно убить НАДЗИРАТЕЛЯ (в интерьере, не на улице).')
			sampSendChat('/an '..id..' А потом сбегать через забор. В каком именно месте - ищите сами.')
			sampSendChat('/an '..id..' Если Вы умрёте - Вас вернёт обратно в тюрьму.')
		end)
	end, 'Поведать о побеге.' },

	['hgive'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как передавать что-то через инвентарь. [ /hgive ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы передать предмет из инвентаря, нужно открыть инвентарь на клавишу [ N ].')
			sampSendChat('/an '..id..' Затем, выделив нужный предмет, кликнуть на кнопку «Передать» в левом, нижнем, углу.')
			sampSendChat('/an '..id..' Укажите ID того, кому передаете, затем количество передаваемого предмета.')
		end)
	end, 'Поведать о том, как передавать что-то через инвентарь.' },

	['rukz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о фишках рюказака [ /rukz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Рюкзак можно купить в Супермаркете.')
			sampSendChat('/an '..id..' [ /gps » Услуги » Cупермакеты ]')
			sampSendChat('/an '..id..' Рюкзак даёт слоты для инвентаря, которые Вы можете использовать.')
			sampSendChat('/an '..id..' Взаимодействовать с лежащим на земле рюкзаком может только его владелец.')
			sampSendChat('/an '..id..' Чтобы удалить рюкзак нажмите на знак вопроса в меню инвентаря [ N ].')
		end)
	end, 'Поведать о фишках рюказака' },

	['tlf'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о телефоне [ /tlf ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы достать телефон, используйте - [ /ph ]. ')
			sampSendChat('/an '..id..' Справа, в углу, появится Ваш смартфон, с которым можно взаимодействовать мышкой.')
		end)
	end, 'Поведать о телефоне' },

	['hbox'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как возить боеприпасы и где их брать. [ /hbox ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Ящики с боеприпасами нужны для того чтобы пополнить склад фракции.')
			sampSendChat('/an '..id..' Бандам и Мафиям нужно грабить NGSA [ /gps >> Организации >> Фракции >> NGSA Area 51,либо NGSA SF ]. ')
			sampSendChat('/an '..id..' Ограбление происходит так что вы попадете на базу NGSA через секретный вход,либо залетает на базу на своём авто.')
			sampSendChat('/an '..id..' На NGSA Area 51 есть секретный вход через который вы попадает на склад.')
			sampSendChat('/an '..id..' Учтите что призвать машину на базе NGSA невозможно.')
			sampSendChat('/an '..id..' Чтобы взять ящик вам нужно подойти к нему и нажать на [ H ], затем положить в багажник.')
			sampSendChat('/an '..id..' Чтобы положить ящик с боеприпасами в багажник вам нужно встать у багажника авто... ')
			sampSendChat('/an '..id..' ...и нажать комбинацию клавиш ALT + ПКМ. ')
			sampSendChat('/an '..id..' В случае если вы уронили ящик [ N >> Рядом ]')	
		end)
	end, 'Поведать о том, как возить боеприпасы и где их брать.' },

	['hhelp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Ответ на «ПОМОГИТЕ» [ /hhelp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Слово «помогите» никак не говорит нам о том, чем нужно Вам помочь.')
			sampSendChat('/an '..id..' Пожалуйста, сформулируйте обращение и подайте его еще раз.')
		end)
	end, 'Ответ на «ПОМОГИТЕ»' },

	['hcl'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как закрыть ТС. [ /hcl ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Закрыть/открыть командой можно лишь арендованый транспорт. Личный - только через меню.')
			sampSendChat('/an '..id..' Чтобы закрыть/открыть личный транспорт, достаточно прописать [ /car » Управление замком ].')
			sampSendChat('/an '..id..' Арендованый же транспорт закрывается/открывается одной командой - [ /lock ].')
			sampSendChat('/an '..id..' Закрыть транспорт своей организации невозможно.')
		end)
	end, 'Поведать о том, как закрыть ТС.' },

	['hdrug'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о продаже наркотиков. [ /hdrug ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id) 
			sampSendChat('/an '..id..' Продать незаконные предметы вы можете через сделку. ')  
			sampSendChat('/an '..id..' [ N >> Нажать на предмет который вы хотите продать,затем нажать на $ внизу инвентаря ].') 
			sampSendChat('/an '..id..' Также вы можете продать нелегальные предметы [ /gps >> Услуги >> Чёрный рынок ].') 
			sampSendChat('/an '..id..' Ещё вы может продать нелегальные вещи через /shop в любой точке штата.') 
			sampSendChat('/an '..id..' Но учтите что вам могут дать звёзды розыска и посадить в тюрьму.')
		end)
	end, 'Поведать о продаже наркотиков.' },

	['carh'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, что авто можно иметь без дома. [ /carh ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Транспорт можно приобрести не имея жилья.')
			sampSendChat('/an '..id..' Отсутствие дома или постройки никак на это не влияет.')
		end)
	end, 'Поведать о том, что авто можно иметь без дома.' },

	['hst'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как сменить стиль боя. [ /hst ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Возможность изменять стиль боя открываетcя при навыке силы 200+. [ /skill ]')
			sampSendChat('/an '..id..' Чтобы изменить стиль боя, воспользуйтесь командой [ /styles ].')
		end)
	end, 'Поведать о том, как сменить стиль боя.' },

	['no'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Нет. [ /no ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Нет.')
		end)
	end, 'Нет.' },

	['yes'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Да. [ /yes ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Да.')
		end)
	end, 'Да.' },

	['hcall'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как позвонить с телефона. [ /hcall ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Сначала возьмите в руки телефон [ /ph ], затем в меню выберите пункт ТЕЛЕФОН.')
			sampSendChat('/an '..id..' После этого набирайте нужный Вам номер. Узнать номер игрока - [ /number id ].')
			sampSendChat('/an '..id..' Как только наберете номер - нажмите ОК, вы будете звонить другому игроку.')
		end)
	end, 'Поведать о том, как позвонить с телефона.' },

	['wa'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Сказать то, что обращение уже обрабатывается. [ /wa ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Мы принялись за обработку Вашего обращения, ожидайте.')
		end)
	end, 'Сказать то, что обращение уже обрабатывается.' },

	['hradio'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Как связаться с DJ. [ /hradio ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для связи с Диджеями используйте - [ /radio » Связаться с DJ ].')
			sampSendChat('/com '..id)
		end)
	end, 'Как связаться с DJ.' },

	['hrp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Узнайте РП путем. [ /hrp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' На подобные вопросы администрация не может дать ответ. Попробуйте узнать это ролевым путем.')
			sampSendChat('/com '..id)
		end)
	end, 'Узнайте РП путем.' },

	['hundress'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как надеть скин. [ /hundress ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для того чтобы одеть свою одежду, зайдите в инвентарь[N].')
			sampSendChat('/an '..id..' Найдите свою одежду в инвентаре, нажмите на неё 2 раза.')
			sampSendChat('/an '..id..' Вуаля! Вы одеты.')
		end)
	end, 'Поведать о том, как разблокировать бронежилет и надеть его.' },

	['hgun'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как и где взять оружие. [ /hgun ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Взять или приобрести оружие Вы можете на складе своей оранизации или в магазине оружия.')
			sampSendChat('/an '..id..' Достаточно пойти на склад, зайти в инвентарь и в правом меню выбрать...')
			sampSendChat('/an '..id..' ...пункт сверху "СКЛАД", берите нужное кол-во патрон и оружия.')
		end)
	end, 'Поведать о том, как и где взять оружие.' },

	['hlid'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Сказать: спросите у лидера. [ /hlid ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Администрация не может дать ответ на этот вопрос.')
			sampSendChat('/an '..id..' Обратитесь с этим вопросом к лидеру фракции, дабы получить ответ.')
		end)
	end, 'Сказать: спросите у лидера.' },

	['tune'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о тюнинге. [ /tune ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Установить тюнинг на свой автомобиль Вы можете в Автосервисе. Также, там делают как ...')
			sampSendChat('/an '..id..' ... покрасочные работы, так и ремонт автомобиля. Используйте GPS, дабы найти ближайший сервис.')
			sampSendChat('/an '..id..' [ /gps » Услуги » Обслуживание транспорта » Автосервис ЛС | СФ | ЛВ ]')
			sampSendChat('/an '..id..' Чтобы активировать SPORT-режим нажмите - [ Пробел + 2 ].')
		end)
	end, 'Поведать о тюнинге.' },

	['hrep'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как починить машину. [ /hrep ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Есть несколько способов починить свой транспорт:')
			sampSendChat('/an '..id..' Первый - заехать в любую починку сети Pay&Spray. Ремонт будет бесплатным.')
			sampSendChat('/an '..id..' Второй - воспользоваться услугами Автосервиса.')
			sampSendChat('/an '..id..' [ /gps » Услуги » Обслуживание транспорта » Автосервис ЛС | СФ | ЛВ ]')
			sampSendChat('/an '..id..' Третий - подойти к капоту автомобиля и использовать - [ /bonnet ].')
		end)
	end, 'Поведать о том, как починить машину.' },

	['hwarn'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о ВАРНах. [ /hwarn ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' На сервере есть 3 вида WARN.')
			sampSendChat('/an '..id..' Первый обычный WARN который ничего вам не ограничивает.')
			sampSendChat('/an '..id..' Второй GunWarn - который ограничивает вам использование оружия на определённый срок.')
			sampSendChat('/an '..id..' Третий GameWarn - который не позволяет вам вступить во фракцию.')
			sampSendChat('/an '..id..' GunWarn и GameWarn нельзя снять через [ /donate ]')
			sampSendChat('/an '..id..' А вот обычный Warn можно [ /donate >> Услуги Аккаунта >> Снять Warn ].')
		end)
	end, 'Поведать о ВАРНах.' },

	['promo'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о Промокодах. [ /hpromo ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Что такое промокод?')
			sampSendChat('/an '..id..' Промокод - это спец. код, который даёт Вам деньги, уровень и т.п.')
			sampSendChat('/an '..id..' О новых промокодах можно узнать в официальной группе сервера - [ vk.com/pearsproject ].')
			sampSendChat('/an '..id..' Чтобы ввести Промокод используйте - [ /mm » ПромоКод ].')
			sampSendChat('/an '..id..' На данный момент действующих промокодов нет.')
		end)
	end, 'Поведать о Промокодах.' },

	['hfam'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как покинуть семью. [ /hfam ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для увольнения из семьи достаточно ввести - [ /leavefam ]. ')
		end)
	end, 'Поведать о том, как покинуть семью.' },

	['hmol'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как сделать коктейль Молотова. [ /hmol ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для создания коктейля Молотова вам понадобятся: пустая бутылка и ...')
			sampSendChat('/an '..id..' ... полная канистра с топливом. Купите пиво в супермаркете и опустошите бутылку.')
			sampSendChat('/an '..id..' Канистру можно наполнить на любой заправке. [ /fillkani ]')
			sampSendChat('/an '..id..' Чтобы сделать Молотов - дважды кликните на пустую бутылку в Вашем инвентаре.')
			sampSendChat('/an '..id..' Не забывайте о правилах сервера, за ДМ полагается наказание!')
		end)
	end, 'Поведать о том, как сделать коктейль Молотова.' },

	['hjob'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать гайд по работам (в т.ч. и прибыльной). [ /hjob ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Посмотреть список работ - [ /job ].')
			sampSendChat('/an '..id..' Все работы доступны с первого уровня. Однако, для Moon One Вам понадобится 3-й.')
			sampSendChat('/an '..id..' На большинстве перечисленных работ платят почти одинаково.')
			sampSendChat('/an '..id..' Не можете определиться с выбором? Советуем Вам попробовать работу рыбака или почтальона.')
		end)
	end, 'Поведать гайд по работам (в т.ч. и прибыльной).' },

	['hiznas'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о командах для изнасилования. [ /hiznas ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для особых шалунишек у нас припасены некоторые функции.')
			sampSendChat('/an '..id..' [ /iznas ] или [ /vrot ].')
			sampSendChat('/an '..id..' Объяснять, какая команда и для чего нужна - не будем.')
		end)
	end, 'Поведать о командах для изнасилования.' },

	['hresp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, что мы не спавним ВСЕ авто. [ /hresp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Администрация не может зареспавнить ВЕСЬ транспорт на сервере.')
		end)
	end, 'Поведать о том, что мы не спавним ВСЕ авто.' },

	['carkey'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как передать ключи от авто. [ /carkey ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Передать ключи от личного транспорта можно следующим образом:')
			sampSendChat('/an '..id..' [ /car » Выбирайте слот нужного авто » Дать ключи ].')
		end)
	end, 'Поведать о том, как передать ключи от авто.' },

	['jobp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, что такое очки работы ЖОБ [ /jobp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' JOB - это очки работы. Именно исходя из их количества строится Ваша зарплата.')
			sampSendChat('/an '..id..' Количество очков JOB умножается на сумму, выдающуюся за 1 поинт JOB.')
		end)
	end, 'Поведать о том, что такое очки работы ЖОБ' },

	['htime'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, что такое подарочное время. [ /htime ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Подарочное время нужно для того, чтобы сокращать срок заключения.')
			sampSendChat('/an '..id..' Используйте [ /mm » Подарочное время ]. ')
			sampSendChat('/an '..id..' Подарочное время можно передавать. [ /paytime ]')
		end)
	end, 'Поведать о том, что такое подарочное время.' },

	['weed'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как посадить Марихуану. [ /weed ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Семена Марихуаны можно посадить только за городом.')
			sampSendChat('/an '..id..' Используйте - [ /maruxyana ]. ')
			sampSendChat('/an '..id..' Скорость роста куста - 60 минут.')
		end)
	end, 'Поведать о том, как посадить Марихуану.' },

	['sgun'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о продаже оружия. [ /sgun ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id) 
			sampSendChat('/an '..id..' Системной команды для продажи оружия нет. Продажа основывается на ролевой сделке.') 
			sampSendChat('/an '..id..' Договоритесь о сделке и о сумме заранее.') 
			sampSendChat('/an '..id..' Чтобы передать оружие используйте команду - [ /give ].')
			sampSendChat('/an '..id..' Введите айди игрока, затем, количество патрон, которое хотите передать.')
			sampSendChat('/an '..id..' Потребуйте деньги взамен.') 
			sampSendChat('/an '..id..' Примечание: Администрация не несет ответственность за проведение сделки.') 
			sampSendChat('/an '..id..' Если вы будете обмануты - никто в этом не виноват. Это ролеплей. ') 
		end)
	end, 'Поведать о продаже оружия.' },

	['punish'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о выдаваемых Администрацией наказаниях. [ /punish ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id) 
			sampSendChat('/an '..id..' Как наказываются игроки за те, или иные, нарушения:') 
			sampSendChat('/an '..id..' Наказание за затрагивание родни и ТК (убийство члена своей команды) выдается строго ...') 
			sampSendChat('/an '..id..' ... после обращения игрока (пострадавшей стороны) в репорт. ') 
			sampSendChat('/an '..id..' Такие наказания, как: ДМ, ДБ, СК, нРП и пр. могут выдаваться и без обращения игрока ...')
			sampSendChat('/an '..id..' ... на усмотрение администратора.') 
			sampSendChat('/an '..id..' Такое нарушение, как мат и оскорбление в Вашу сторону - не наказуемо.')
			sampSendChat('/an '..id..' Мы не можем забанить игрока за ДМ или наказать за то, что он неадекватно себя ведет.')
			sampSendChat('/an '..id..' Любое нарушение игрока должно быть доказано. Без доказательств наказание выдать нельзя.')
		end)
	end, 'Поведать о выдаваемых Администрацией наказаниях.' },

	['hnal'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о налогах и штрафах. [ /hnal ID ]', 0xC1C1C1)end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Вся информация о налогах и штрафах доступна в меню - [ /nalog ].')
			sampSendChat('/an '..id..' Оплатить налоги и штрафы можно в любом банкомате.')
			sampSendChat('/an '..id..' В случае неуплаты налогов, Ваше имущество подвергается аресту.')
		end)
	end, 'Поведать о налогах и штрафах.' },

	['hfish'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать гайд о рыбалке. [ /hfish ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы начать работу рыбака достаточно прибыть в Рыбацкую бухту. [ /job ]')
			sampSendChat('/an '..id..' Там Вы сможете купить удочку [ /ydo ], накопать червей или купить их в магазине «ЯЯЯЗЬ».')	
			sampSendChat('/an '..id..' Рыбачить можно как с пирса, так и на воде, арендовав плавательное средство.')
			sampSendChat('/an '..id..' Чтобы закинуть удочку воспользуйтесь командой - [ /fish ].')
			sampSendChat('/an '..id..' Продать рыбу можно в будке, которая находится на пирсе в Рыбацкой бухте.')	
		end)
	end, 'Поведать гайд о рыбалке.' },

	['hshark'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать гайд о ловле акул. [ /hshark ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы начать работу ловца акул достаточно прибыть в Рыбацкую бухту. [ /job ]')
			sampSendChat('/an '..id..' По приезду, зайдите в магазин Язь и купите там нужные для рыбалки вещи.')
			sampSendChat('/an '..id..' На пирсе арендуйте Reefer [ /agetcar ] и направляйтесь на метку, которая появится на карте.')
			sampSendChat('/an '..id..' Чтобы управлять таким катером понадобится навык «Вождение катеров» равный сотне. [ /skill ]')
			sampSendChat('/an '..id..' Прибыв на место используйте - [ /shark ] и ловите акулу.')
			sampSendChat('/an '..id..' Поймав акулу - возвращайтесь в бухту, она отмечена на карте.')
		end)
	end, 'Поведать гайд о ловле акул.' },

	['harh'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать гайд по работе археолога. [ /harh ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы начать работу Археолога, необходимо прибыть на раскопки. [ /job » Археология ]')
			sampSendChat('/an '..id..' Там Вы можете изучать Египетский язык [ /skill ], искать древние вещи и артефакты.')
			sampSendChat('/an '..id..' Еще можно таскать валуны. Чем заняться - выбирать Вам.')
			sampSendChat('/an '..id..' Увеличить заработок можно продав все драгоценности скупщику, перед тем, как забрать зарплату.')
			sampSendChat('/an '..id..' Найти скупщика Вы сможете в Лос-Сантосе, воспользуйтесь GPS. [ /gps » Прочее » Скупщик ]')
			sampSendChat('/an '..id..' Продав ценности скупщику - возвращайтесь на раскопки и заберите свои деньги.')
		end)
	end, 'Поведать гайд по работе археолога.' },

	['arp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать то, что админы не вмешиваются в РП. [ /arp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Администрация не вмешивается в процесс ролевой игры.')
		end)
	end, 'Поведать то, что админы не вмешиваются в РП.' },

	['hlaw'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как вызвать адвоката. [ /hlaw ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы нанять адвоката - Вам нужно связаться с ним.')
			sampSendChat('/an '..id..' Используйте [ /lawyers ] либо [ /online » Адвокаты ], чтобы посмотреть список адвокатов.')
			sampSendChat('/an '..id..' Получив номер адвоката - свяжитесь с ним по телефону.')
			sampSendChat('/an '..id..' Достаньте телефон - [ /ph ] » CALL » Введите номер » Нажмите CALL в нижнем углу.')
		end)
	end, 'Поведать о том, как вызвать адвоката.' },

	['htax'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как вызвать такси. [ /htax ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для вызова такси Вам необходимо сделать следующее:')
			sampSendChat('/an '..id..' Достать телефон [ /ph ] [ Y ] >> Телефон >> Вызвать такси')
		end)
	end, 'Поведать о том, как вызвать такси.' },

	['hanim'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о анимках на сервере. [ /hanim ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Администрация не знает всех анимаций, представленных на сервере.')
			sampSendChat('/an '..id..' Используйте [ /anim].')
			sampSendChat('/an '..id..' Все анимации представлены там, найдите нужную самостоятельно.')
		end)
	end, 'Поведать о анимках на сервере.' },

	['golod'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о голоде. [ /golod ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Ваше ХП уменьшается потому, что Вы голодны. [ /potreb ]')
			sampSendChat('/an '..id..' Найдите ближайшую закусочную и перекусите.')
			sampSendChat('/an '..id..' [ /gps » Услуги » Закусочные ].')
		end)
	end, 'Поведать о голоде.' },

	['hquest'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о квестах. [ /hquest ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Посмотреть список доступных квестов нельзя.')
			sampSendChat('/an '..id..' О новом квесте сервер напомнит Вам сам.')
			sampSendChat('/an '..id..' Последний квест - это получение водительских прав в автошколе.')
		end)
	end, 'Поведать о квестах.' },

	['hcolor'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как найти цвета для ника. [ /hcolor ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Администрация не знает всех цветов для ников и покраски транспорта.')
			sampSendChat('/an '..id..' Вы самостоятельно можете найти нужный Вам цвет для ТС в интернете.')
			sampSendChat('/an '..id..' Используйте - [ /cvet | /colors ] для поиска цветов для ника.')
		end)
	end, 'Поведать о том, как найти цвета для ника.' },

	['hnrpnick'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как сменить нонРП ник. [ /hnrpnick ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Сменить нонРП ник Вы можете самостоятельно, при условии что Ваш LVL не выше 2.')
			sampSendChat('/an '..id..' Используйте [ /donate » Услуги аккаунта » Сменить Ник-Нейм ].')
			sampSendChat('/an '..id..' Эта услуга для Вас будет бесплатной.')
		end)
	end, 'Поведать о том, как сменить нонРП ник.' },

	['chips'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, что такое GOLD-фишки. [ /chips ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Gold-Фишки можно купить только за золото [ /donate ].')
			sampSendChat('/an '..id..' 1 Грамм Золота = 4000 Gold-Фишек. Их нельзя обменять на деньги или обычные фишки.')
			sampSendChat('/an '..id..' Gold-Фишки возможно использовать только как ставку.')
			sampSendChat('/an '..id..' Введите [ /gold ], чтобы использовать Gold-Фишки в качестве ставки.')
			sampSendChat('/an '..id..' Если вы поставите Gold-Фишки в качестве ставки - выигрыш будет в обычных фишках.')
		end)
	end, 'Поведать о том, что такое GOLD-фишки.' },

	['hob'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как съесть труп. [ /hob ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы съесть труп человека используйте - [ /obisk ].')
			sampSendChat('/an '..id..' Труп активен в первые 30 секунд после того, как игрока убили.')
			sampSendChat('/an '..id..' Если труп не получается съесть - значит 30 секунд уже прошли.')
		end)
	end, 'Поведать о том, как съесть труп.' },

	['antp'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, что АДМ не телепортируются. [ /antp ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Нет смысла просить администрацию телепортироваться к Вам.')
			sampSendChat('/an '..id..' Для начала - опишите Вашу проблему, можно даже в ПМ.')
			sampSendChat('/an '..id..' Только после этого Администрация решит, как действовать по Вашему вопросу.')
		end)
	end, 'Поведать о том, что АДМ не телепортируются.' },

	['hboot'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как взаимодействовать с багажником. [ /hboot ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id..' ')
			sampSendChat('/an '..id..' Для взаимодействия с багажником автомобиля используйте: [ /boot ].')
			sampSendChat('/an '..id..' В багажник можно класть как оружие, наркотики, ящики с боеприпасами, так и людей.')
			sampSendChat('/an '..id..' Учтите, если машина взорвется - Вы потеряете содержимое ее багажника.')
		end)
	end, 'Поведать о том, как взаимодействовать с багажником.' },

	['hkid'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как похищать людей. [ /hkid ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id..' ')
			sampSendChat('/an '..id..' ВНИМАНИЕ! Перед данным действием, отыграйте РП.')
			sampSendChat('/an '..id..' Похищение людей следует группировкой численностью от 3-х человек.')
			sampSendChat('/an '..id..' Игнорируя это правило Вы можете быть наказаны за нонРП.')
			sampSendChat('/an '..id..' Чтобы нокаутировать игрока используйте команду [ /ko id ]')
			sampSendChat('/an '..id..' Засунуть в багажник - [ N >> Багажник >> Затем снизу будет стрелочка которую нужно нажать и выбрать (Человек) ]')
			sampSendChat('/an '..id..' Условие: человек должен быть рядом с багажником авто.')
			sampSendChat('/an '..id..' Связать игрока - [ /tie ] ,надеть мешок [ /meshok либо /bag id ]')
		end)
	end, 'Поведать о том, как похищать людей.' },

	['idk'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Сказать, что у АДМ нет ответа на этот вопрос. [ /idk ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' У Администрации нет ответа на Ваш вопрос.')
		end)
	end, 'Сказать, что у АДМ нет ответа на этот вопрос.' },

	['hdays'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о 7Days. [ /hdays ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' 7Day - это система бонусов для настоящик задротов!')
			sampSendChat('/an '..id..' Условия просты: ежедневно получайте 5 зарплат подряд, на протяжении 7 дней, и тогда:')
			sampSendChat('/an '..id..' На 8-й день Вы получите - $100.000. На 9-й - 500 сек. подарочного времени.')
			sampSendChat('/an '..id..' На 10-й день Вам подарят 50 грамм золота!. После 10-го дня счетчик сбрасывается ...')
			sampSendChat('/an '..id..' ... и Вы сможете начать с самого начала.')
			sampSendChat('/an '..id..' Зарплаты, полученные во время РП сна - не засчитываются.')
		end)
	end, 'Поведать о 7Days.' },

	['hfindcar'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, где потерялась тачка игрока. [ /hfindcar ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Потеряли свой автомобиль? Убедитесь, что он у Вас вообще есть - [ /stats ].')
			sampSendChat('/an '..id..' Авто существует? Попробуйте найти его на карте - [ /car » Найти транспорт на карте ].')
			sampSendChat('/an '..id..' Авто есть в статистике, но его нет на карте? Гляньте на парковке/в гараже [ /loadcar ].')
			sampSendChat('/an '..id..' Если Вы заказывали авто в автосалоне - необходимо подождать 24 часа реального времени.')
			sampSendChat('/an '..id..' Не помогло? Если в статистике ID авто (квадратные скобки) свыше 2000, то...')
			sampSendChat('/an '..id..' ...обратитесь в тему восстановления на нашем форуме.')
			sampSendChat('/an '..id..' Pears Project » Технический раздел » Восстановление игровых ресурсов [ 1 сервер ]')
		end)
	end, 'Поведать о том, где потерялась тачка игрока.' },

	['philin'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Направить к Филину. [ /philin ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для решения проблемы обратитесь к ГА сервера - Cardinal Reveal [ vk.com/philinos ].')
		end)
	end, 'Направить к Стигме.' },

	['plates'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как получить номера на транспорт. [ /plates ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Чтобы получить уникальные номера на свой транспорт, вам надо...')
			sampSendChat('/an '..id..' ...приехать в полицейский департамент, некоторые сотруднки могут...')
			sampSendChat('/an '..id..' ...сделать вам номера. Это стоит 10.000$')
		end)
	end, 'Поведать о том, как получить номера на транспорт.' },

	['hgryz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о системе грузов Дальнобойщиков. [ /hgryz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Администрация не может как-либо повлиять на грузы дальнобойщиков.')
			sampSendChat('/an '..id..' Они обновляются автоматически, с определенной переодичностью.')
			sampSendChat('/an '..id..' Ночью они обновляются гораздо реже, чем в дневное время.')
		end)
	end, 'Поведать о системе грузов Дальнобойщиков.' },

	['fuck'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Послать к хуям. [ /fuck ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' На данный момент у администрации завал. Вас много, нас мало.')
			sampSendChat('/an '..id..' Сейчас никто не сможет Вам помочь, пожалуйста, найдите иной выход из ситуации.')
		end)
	end, 'Послать к хуям.' },

	['hmarry'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о бракосочетании. [ /hmarry ID ]', 0xC1C1C1)end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для бракосочетания Вам понадобятся обручальные кольца. [ /gps » Услуги » Супермаркеты ]')
			sampSendChat('/an '..id..' Приобретя их - направляйтесь в церковь. [ /gps » Прочее » Церковь ].')
			sampSendChat('/an '..id..' К тому же, Вам понадобятся свидетели. Пригласите друзей, либо выберите друг друга.')
			sampSendChat('/an '..id..' [ /propose - сделать предложение | /witness - выбрать свидетеля | /divorce - развестись ]')
		end)
	end, 'Поведать о бракосочетании.' },

	['hvoice'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о VoiceChat. [ /hvoice ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' VoiceChat - модификация, позволяющая использовать функцию голосового чата в игре.')
			sampSendChat('/an '..id..' pears-project.com - оттуда Вы сможете загрузить необходимые файлы для его работы.')
			sampSendChat('/an '..id..' Используйте клавишу [ B ] для активации голосового чата.')
		end)
	end, 'Поведать о VoiceChat.' },

	['unpriz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, как уволиться с призывников. [ /unpriz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Уволить с призыва Вас может исключительно лидер Армии, либо руководитель призыва.')
			sampSendChat('/an '..id..' Узнать, есть-ли кто из них в сети - [ /priziv » Призывники Онлайн ]. Ищите оранжевый ник.')
			sampSendChat('/an '..id..' Далее, обратитесь к нему через рацию призывников [ /v ], либо отправив СМС [ /w ID ].')
			sampSendChat('/com '..id)
		end)
	end, 'Поведать о том, как уволиться с призывников.' },

	['hact'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о АКТИОН. [ /hact ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' Для того, чтобы оставить текст 3D-ситуации воспользуйтесь [ /action ].')
			sampSendChat('/an '..id..' Если Вы делаете обявление, следует соблюдать следующие правила:')
			sampSendChat('/an '..id..' Оно должно иметь физический носитель, не нарушать MG и иметь контакты с персонажем.')
			sampSendChat('/an '..id..' Пример: [Объявление на валяющейся газете] Продам тюнингованный автомобиль Буллет, контакты: 415-051. ')
			sampSendChat('/an '..id..' В остальных случаях это предназначено для описания ситуации от третьего лица.')
			sampSendChat('/com '..id)
		end)
	end, 'Поведать о АКТИОН.' },

	['hunits'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о валюте Unit. [ /hunits ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ')
			sampSendChat('/an '..id..' Юниты — условная валюта на сервере. Накапливается выполняя различные действия в организации.')
			sampSendChat('/an '..id..' Каждое убийство или нанесенный урон на захвате начисляет на Ваш аккаунт валюту - «Юниты».')
			sampSendChat('/an '..id..' Также, они выдаются за каждый ящик с боеприпасами, который Вы принесли на склад фракции.')
			sampSendChat('/an '..id..' Количество начисляемых Юнитов настраивается лидером организации. Их можно обменять на деньги.')
			sampSendChat('/an '..id..'  1 Юнит = $1. Сделать это можно в Банке, либо, с помощью ноутбука - [ /notebook ].')
			sampSendChat('/com '..id)
		end)
	end, 'Поведать о валюте Unit.' },

	['hsdel'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ fEXP ]: Поведать о том, где проводятся сделки. [ /hsdel ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/re '..id)
			sampSendChat('/an '..id..' ')
			sampSendChat('/an '..id..' Сделки на имущество проводятся в Центре Обмена - [ /gps » Услуги » Центр Обмена ].')
			sampSendChat('/an '..id..' Продать какие-либо предметы Вы можете через Инвентарь, Лавку или на Рынке.')
			sampSendChat('/an '..id..' [ /gps » Услуги » Рынок Los Santos / Черный Рынок ].')
			sampSendChat('/an '..id..'Администрация не принимает участия и не контролирует этот процесс, ибо он автоматизирован.')
			sampSendChat('/com '..id)
		end)
	end, 'Поведать о том, где проводятся сделки.' },

	['fupd'] = { function()
		sampShowDialog(lox, "Подтверждение", 'Вы действительно хотите обновить скрипт?', "Да", "Нет", 0)
		lua_thread.create(function()
			while sampIsDialogActive(lox) do wait(0) end
				local res, bu, li, inp = sampHasDialogRespond(lox)
				if res and bu == 0 then
				sampAddChatMessage('Вы отказались от обновления', 0xC1C1C1)
				elseif bu == 1 then
				upd()
				end
				return
			end)
		
	end,'Обновить скрипт.' },

	
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
	sampShowDialog(dialogid + current, '{0088ff}fEXP | {ffffff}' .. current + 1 .. ' страница из ' .. count, n, b1, b2, 0)
end

--- EVENT's

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(0) end

	sampAddChatMessage('[ fEXP ]: {ffffff}Скрипт загружен. Версия: 1.3. Автор: imring, Обновил: Template. Посмтреть список команд [ /fcmds ].', 0x0088FF)

	sampRegisterChatCommand('fcmds', function()
		current = 0
		parseCmds('Далее', '')
	end)
	sampRegisterChatCommand('finfo', function(text)
		if text == '' then return sampAddChatMessage('[ fEXP ]: {ffffff}Использовать: /finfo [Команда].', 0x0088FF) end
		if cmds[text] then sampAddChatMessage('[ fEXP ]: {ffffff}' .. cmds[text][2] .. ' [ /' .. text .. ' ID ]', 0x0088FF)
		else sampAddChatMessage('[ fEXP ]: {ffffff}Данной команды нету.', 0x0088FF) end
	end)

	while true do wait(0)
		if isKeyJustPressed(VK_0) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() then
			sampSendChat("/rt")
		end
		local id = sampGetCurrentDialogId()
		local res, button, list, input = sampHasDialogRespond(id)
		if res then
			if id - current == dialogid then
				local b1, b2 = 'Далее', 'Назад'
				current = current + ( button == 1 and 1 or -1 )
				if current > -1 and current < count then
					if current == 0 then b2 = ''
					elseif current + 1 == count then b1 = 'Закрыть' end
					parseCmds(b1, b2)
				else current = 0 end
			end
		end
	end
end

function upd()
		downloadUrlToFile( "https://www.dropbox.com/s/5rrrvbos8pt2rd8/fEXP.lua?dl=0",  "moonloader/fEXP.lua")
		sampAddChatMessage("скачивание [!]", 0x0088ff)
		wait(900)
		local dwn = [[{ffffff}Скрипт обновлён, изменения вступят в силу после перезагрузки скрипта.]]
		sampShowDialog(16959, "{0082ff}Обновление ", dwn, "{ffffff}Закрыть", "", 0)
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