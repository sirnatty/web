<!-- start Simple Custom CSS and JS -->
    <script>
        var ctx = document.getElementById('tokenomicsChart').getContext('2d');
        var tokenomicsChart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ['Public Sale', 'Pre-Sale', 'Team', 'Marketing', 'Liquidity', 'Airdrops'],
                datasets: [{
                    data: [40, 17, 14, 15, 6, 8],
                    backgroundColor: ['#1e88e5', '#8e24aa', '#43a047', '#fb8c00', '#e53935', '#fdd835'],
                    hoverOffset: 10
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                        labels: {
                            color: '#e0e0e0'
                        }
                    },
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                return tooltipItem.label + ': ' + tooltipItem.raw + '%';
                            }
                        }
                    }
                }
            }
        });
    </script><!-- end Simple Custom CSS and JS -->
