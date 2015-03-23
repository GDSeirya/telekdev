--Script by Wesz ;)

function map_cp_lab_hard.init()

	function bindings.playerInit(p)

	p:data().points = 0

      end

      addScoreField("CheckPoint", 1, function(player)
	return player:data().points
      end)

      function addPoint(o, w)

	w:player():data().points = w:player():data().points + 1
	
      end
end