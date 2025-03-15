package es.ulpgc.eite.da.advclickcounter.test;


import androidx.test.ext.junit.runners.AndroidJUnit4;

import org.junit.runner.RunWith;

import io.cucumber.android.runner.CucumberAndroidJUnitRunner;
import io.cucumber.junit.CucumberOptions;


// Project: Click Counter
// Created by Luis Hernandez 
// Copyright (c) 2025 EITE (ULPGC)
@RunWith(AndroidJUnit4.class)
//@RunWith(Cucumber.class)
@CucumberOptions(
    //features = "classpath:features/ClickCounterTests.feature",
    features = "classpath:features/ClickCounterApp.feature",
    //features = "classpath:features/ClickCounter.feature",
    glue = "es.ulpgc.eite.da.advclickcounter.steps",
    plugin = {"pretty"}
)
public class EspressoNewTests extends CucumberAndroidJUnitRunner {

}
