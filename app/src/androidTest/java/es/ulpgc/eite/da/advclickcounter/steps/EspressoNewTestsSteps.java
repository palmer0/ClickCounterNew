package es.ulpgc.eite.da.advclickcounter.steps;


import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.Espresso.pressBack;
import static androidx.test.espresso.action.ViewActions.click;
import static androidx.test.espresso.assertion.ViewAssertions.matches;
import static androidx.test.espresso.matcher.ViewMatchers.isDisplayed;
import static androidx.test.espresso.matcher.ViewMatchers.isEnabled;
import static androidx.test.espresso.matcher.ViewMatchers.withId;
import static androidx.test.espresso.matcher.ViewMatchers.withText;

import static org.hamcrest.Matchers.not;

import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.rule.ActivityTestRule;
import androidx.test.uiautomator.UiDevice;

import es.ulpgc.eite.da.advclickcounter.R;
import es.ulpgc.eite.da.advclickcounter.counter.CounterActivity;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;


// Project: Click Counter
// Created by Luis Hernandez 
// Copyright (c) 2025 EITE (ULPGC)
@SuppressWarnings("ALL")
public class EspressoNewTestsSteps {

    private ActivityTestRule<CounterActivity> testRule =
        new ActivityTestRule<>(CounterActivity.class,false, false);

    //private ActivityScenarioRule<CounterActivity> scenarioRule;

    /*
    private ActivityScenarioRule<CounterActivity> scenarioRule =
        new ActivityScenarioRule<>(CounterActivity.class);
    */

    @Given("launch {string} screen")
    public void launchScreen(String screen) {

        // screen: COUNTER | CLICKS
        if (screen.equals("COUNTER")) {
            testRule.launchActivity(null);
        }

        /*
        if (screen.equals("COUNTER")) {
            scenarioRule = new ActivityScenarioRule<>(CounterActivity.class);
            scenarioRule.getScenario().onActivity(activity -> {

                try {

                    // Esperar para que la inicializacion termine (opcional)
                    Thread.sleep(500);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            });
        }
        */

        /*
        if(screen.equals("COUNTER")) {
            scenarioRule = new ActivityScenarioRule<>(CounterActivity.class);
        }
        */

        try {

            // Esperar para que la inicializacion termine (opcional)
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }

    @And("{string} display show {string}")
    public void displayShow(String display, String value) {

        int displayId =
            display.equals("COUNTER") ? R.id.tvCounter : R.id.tvClicks;

        // display: COUNTER | CLICKS
        onView(withId(displayId))
            .check(matches(isDisplayed()))
            .check(matches(withText(value)));

    }

    @And("{string} button is {string}")
    public void buttonIs(String button, String state) {

        boolean enabled = state.equals("enabled");

        // button: INCREMENT | RESET | CLICKS | CLEAR
        onView(withId(getButtonId(button)))
            .check(matches(isDisplayed()))
            .check(matches(enabled ? isEnabled() : not(isEnabled())));
    }

    @When("press {string} button")
    public void pressButton(String button) {

        // button: INCREMENT | RESET | CLICKS | CLEAR
        onView(withId(getButtonId(button))).perform(click());
    }


    @When("press {string} button {int} times")
    public void pressButtonTimes(String button, int clicks) {
        for (int i = 0; i < clicks; i++) {
            onView(withId(getButtonId(button))).perform(click());
        }
    }

    /*
    @And("pause {string} screen")
    public void pauseScreen(String screen) {

        // screen: COUNTER | CLICKS
    }
    */

    /*
    @And("finish {string} screen")
    public void finishScreen(String screen) {

        // screen: COUNTER | CLICKS
    }
    */


    @And("press BACK on {string} screen")
    public void pressBackOnScreen(String screen) {

        // screen: COUNTER | CLICKS
        if(screen.equals("CLICKS")) {
            pressBack();
        }
    }

    /*
    @And("resume {string} screen")
    public void resumeScreen(String screen) {

        // screen: COUNTER | CLICKS
    }
    */

    @And("rotate {string} screen")
    public void rotateScreen(String screen) {

        // screen: COUNTER | CLICKS

        try {

            // Obtener el dispositivo UI para rotación
            UiDevice device =
                UiDevice.getInstance(InstrumentationRegistry.getInstrumentation());

            // Rotar a modo landscape
            device.setOrientationLeft();

            // Esperar para que la rotación termine (opcional)
            Thread.sleep(500);

            // Rotar a modo portrait
            device.setOrientationNatural();

            // Esperar para que la rotación termine (opcional)
            Thread.sleep(500);

        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    // ----------------------------------------------------------

    private int getButtonId(String button) {

        // button: INCREMENT | RESET | CLICKS | CLEAR

        if(button.equals("INCREMENT")) return R.id.btnIncrement;
        else if(button.equals("RESET")) return R.id.btnReset;
        else if(button.equals("CLICKS")) return R.id.btnClicks;
        else return R.id.btnClear;

    }

}
