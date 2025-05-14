package com.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model.GamesList;
import com.service.GamesService;

@Controller
@RequestMapping("/admingames")
public class GameListController {

    @Autowired
    GamesService gamesService;

    @RequestMapping("/adminlist")
    public String addList(Model model) {
        GamesList gameslist = new GamesList();
        model.addAttribute("gameslist", gameslist);
        return "admin-gameslist";
    }
    
    @RequestMapping("/list")
    public String listGames(Model model) {
        List<GamesList> gamesList = gamesService.getAllGameDetails();
        model.addAttribute("game", gamesList);
        return "admin-games";  
    }

    
    @RequestMapping("/gamedata")
    public String adminHome(@ModelAttribute("gameslist") GamesList gamesList, 
                            @RequestParam("image1") MultipartFile image, Model model) 
                            throws IOException {
        if (image != null && !image.isEmpty()) {
            gamesList.setGameImage(image.getBytes());
            gamesList.setImageContentType(image.getContentType());
        }
        else {
            System.out.println("No image uploaded");
        }
        gamesService.saveGameDetail(gamesList);
        List<GamesList> game = gamesService.getAllGameDetails();
        model.addAttribute("game", game);
        return "admin-games";
    }

    @RequestMapping("/update/{id}")
    public String updateGame(@PathVariable("id") Long id,
                             @ModelAttribute("gameslist") GamesList gameslist,
                             @RequestParam("image1") MultipartFile image) 
                             throws IOException {
        GamesList existingGame = gamesService.getGameDetailtById(id);
        if (image != null && !image.isEmpty()) {
            gameslist.setGameImage(image.getBytes());
        } else {
            gameslist.setGameImage(existingGame.getGameImage());
        }
        gamesService.saveGameDetail(gameslist);
        return "redirect:/admingames/list";
    }

    @RequestMapping("/edit/{id}")
    public String editGames(@PathVariable("id") Long id, Model model) {
        GamesList gamelist = gamesService.getGameDetailtById(id);
        model.addAttribute("gameslist", gamelist);
        return "admin-game-edit";
    }
    
    @RequestMapping("/delete/{id}")
    public String deleteGame(@PathVariable("id") Long id) {
    	gamesService.deleteGameDetail(id);
    	return "redirect:/admingames/list";
    }
    
    @RequestMapping("/userlist")
    public String userListGames(Model model) {
        List<GamesList> gamesList = gamesService.getAllGameDetails();
        model.addAttribute("game", gamesList);
        return "user-gamesview";  
    }
}
