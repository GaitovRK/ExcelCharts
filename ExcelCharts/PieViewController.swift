//
//  PieViewController.swift
//  ExcelCharts
//
//  Created by Rashid Gaitov on 05.08.2022.
//

import UIKit
import Charts

class PieViewController: UIViewController, ChartViewDelegate {

    var pieChart = PieChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pieChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        pieChart.frame = CGRect(x: 0,
                                y: 0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        pieChart.center = view.center
        
        var entries = [ChartDataEntry]()
                
        for x in 1...10 {
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        entries.append(PieChartDataEntry(value: 25.0))
        
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        
        let data = PieChartData(dataSet: set)
        
        pieChart.data = data

        view.addSubview(pieChart)
    }

}
