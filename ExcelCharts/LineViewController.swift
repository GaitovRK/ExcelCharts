//
//  LineViewController.swift
//  ExcelCharts
//
//  Created by Rashid Gaitov on 05.08.2022.
//

import UIKit
import Charts

class LineViewController: UIViewController, ChartViewDelegate {
    
    var lineChart = LineChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lineChart.delegate = self
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lineChart.frame = CGRect(x: 0, y: 0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        lineChart.center = view.center

        var entries = [BarChartDataEntry]()
        
        for x in 1...10 {
            entries.append(BarChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        
        let data = LineChartData(dataSet: set)
        
        lineChart.data = data
        
        view.addSubview(lineChart)
    }
}
