import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                // Vertical Graph
                Chart {
                    BarMark(
                        x: .value("Name", "Snorlax"),
                        y: .value("Weight", 460.0)
                    )
                    .foregroundStyle(Color.cyan)

                    BarMark(
                        x: .value("Name", "Psyduck"),
                        y: .value("Weight", 19.6)
                    )
                    .foregroundStyle(Color.yellow)

                    BarMark(
                        x: .value("Name", "Arcanine"),
                        y: .value("Weight", 155.0)
                    )
                    .foregroundStyle(Color.orange)
                }
                .frame(height: 300)
                .padding()


                // Horizontal Graph
                Chart {
                    BarMark(
                        x: .value("Weight", 460.0),
                        y: .value("Name", "Snorlax")
                    )
                    .foregroundStyle(Color.cyan)

                    BarMark(
                        x: .value("Weight", 19.6),
                        y: .value("Name", "Psyduck")
                    )
                    .foregroundStyle(Color.yellow)

                    BarMark(
                        x: .value("Weight", 155.0),
                        y: .value("Name", "Arcanine")
                    )
                    .foregroundStyle(Color.orange)
                }
                .frame(height: 300)
                .padding()



                // IT Slill
                VStack {
                    Chart {
                        // Snorlax
                        BarMark(
                            x: .value("Name", "Snorlax"),
                            y: .value("Value", 80)
                        )
                        .position(by: .value("Category", "AWS"))
                        .foregroundStyle(Color.cyan)

                        BarMark(
                            x: .value("Name", "Snorlax"),
                            y: .value("Value", 70)
                        )
                        .position(by: .value("Category", "iOS"))
                        .foregroundStyle(Color.yellow)

                        BarMark(
                            x: .value("Name", "Snorlax"),
                            y: .value("Value", 50)
                        )
                        .position(by: .value("Category", "Python"))
                        .foregroundStyle(Color.orange)

                        BarMark(
                            x: .value("Name", "Snorlax"),
                            y: .value("Value", 20)
                        )
                        .position(by: .value("Category", "SQL"))
                        .foregroundStyle(Color.green)

                        // Psyduck
                        BarMark(
                            x: .value("Name", "Psyduck"),
                            y: .value("Value", 60)
                        )
                        .position(by: .value("Category", "AWS"))
                        .foregroundStyle(Color.cyan)

                        BarMark(
                            x: .value("Name", "Psyduck"),
                            y: .value("Value", 10)
                        )
                        .position(by: .value("Category", "iOS"))
                        .foregroundStyle(Color.yellow)

                        BarMark(
                            x: .value("Name", "Psyduck"),
                            y: .value("Value", 80)
                        )
                        .position(by: .value("Category", "Python"))
                        .foregroundStyle(Color.orange)

                        BarMark(
                            x: .value("Name", "Psyduck"),
                            y: .value("Value", 60)
                        )
                        .position(by: .value("Category", "SQL"))
                        .foregroundStyle(Color.green)
                    }
                    .frame(height: 300)

                    HStack(spacing: 12) {
                        HStack(spacing: 4) {
                            Circle()
                                .frame(width: 16, height: 16)
                                .foregroundColor(Color.cyan)
                            Text("AWS")
                        }

                        HStack(spacing: 4) {
                            Circle()
                                .frame(width: 16, height: 16)
                                .foregroundColor(Color.yellow)
                            Text("iOS")
                        }

                        HStack(spacing: 4) {
                            Circle()
                                .frame(width: 16, height: 16)
                                .foregroundColor(Color.orange)
                            Text("Python")
                        }

                        HStack(spacing: 4) {
                            Circle()
                                .frame(width: 16, height: 16)
                                .foregroundColor(Color.green)
                            Text("SQL")
                        }
                    }

                }
                .padding()


                // Stock Chart
                Chart {
                    LineMark(
                        x: .value("Weak", "Mon"),
                        y: .value("Sales", 2000)
                    )

                    AreaMark(x: .value("Weak", "Mon"),
                             yStart: .value("MinSales", 1000),
                             yEnd: .value("MaxSales", 3000)
                    )
                    .opacity(0.3)

                    LineMark(
                        x: .value("Weak", "Tue"),
                        y: .value("Sales", 4000)
                    )

                    AreaMark(x: .value("Weak", "Tue"),
                             yStart: .value("MinSales", 2500),
                             yEnd: .value("MaxSales", 4300)
                    )
                    .opacity(0.3)


                    LineMark(
                        x: .value("Weak", "Wed"),
                        y: .value("Sales", 3000)
                    )

                    AreaMark(x: .value("Weak", "Wed"),
                             yStart: .value("MinSales", 2300),
                             yEnd: .value("MaxSales", 3600)
                    )
                    .opacity(0.3)

                    LineMark(
                        x: .value("Weak", "Thu"),
                        y: .value("Sales", 4500)
                    )

                    AreaMark(x: .value("Weak", "Thu"),
                             yStart: .value("MinSales", 4000),
                             yEnd: .value("MaxSales", 4800)
                    )
                    .opacity(0.3)

                    LineMark(
                        x: .value("Weak", "Fri"),
                        y: .value("Sales", 3500)
                    )

                    AreaMark(x: .value("Weak", "Fri"),
                             yStart: .value("MinSales", 2500),
                             yEnd: .value("MaxSales", 4300)
                    )
                    .opacity(0.3)
                }
                .frame(height: 300)
                .padding()
            }
        }
    }
}


