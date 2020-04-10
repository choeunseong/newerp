<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Page Inner Start -->
<!--================================-->


   <!--================================-->
   <!-- Breadcrumb Start -->
   <!--================================-->
   <div class="pageheader pd-t-5 pd-b-25">
      <!-- <div class="pd-t-5 pd-b-5">
         <h1 class="pd-0 mg-0 tx-20">Helpdesk Management</h1>
      </div>
      <div class="breadcrumb pd-0 mg-0">
         <a class="breadcrumb-item" href="index.html"><i class="icon ion-ios-home-outline"></i> Home</a>
         <a class="breadcrumb-item" href="">Dashboard</a>
         <span class="breadcrumb-item active">Helpdesk Management</span>
      </div> -->
   </div>
   <!--/ Breadcrumb End -->
   <!-- Counter Start -->
   <!--================================-->	  
   <div class="row row-xs">
      <div class="col-12 col-sm-6 col-md-6 col-xl-4">
         <div class="card mg-b-20">
            <div class="card-body">
               <h4 class="tx-uppercase tx-10 mg-b-10">학생</h4>
               <div class="d-flex justify-content-between align-items-center">
                  <h2 class="tx-20 tx-sm-18 tx-md-24 mg-b-0 tx-normal tx-rubik tx-dark"><span class="counter tx-rubik tx-normal">1,181</span><span class="tx-11">/per month</span></h2>
                  <div class="tx-danger d-flex justify-content-between align-items-center">
                     <i class="ion-android-arrow-down mr-1"></i> <small>40.8%</small>
                  </div>
               </div>
               <div class="d-flex align-items-center tx-gray-500 tx-11"><span class="tx-danger mr-2 d-flex align-items-center"><i class="ion-android-arrow-down mr-1"></i>+1,551</span>since last month</div>
               <div id="countSpark1" class="mg-t-15"></div>
            </div>
         </div>
      </div>
      <div class="col-12 col-sm-6 col-md-6 col-xl-4">
         <div class="card mg-b-20">
            <div class="card-body">
               <h4 class="tx-uppercase tx-10 mg-b-10">강사</h4>
               <div class="d-flex justify-content-between align-items-center">
                  <h2 class="tx-20 tx-sm-18 tx-md-24 mg-b-0 tx-normal tx-rubik tx-dark"><span class="counter tx-rubik tx-normal">4,530</span><span class="tx-11">/per month</span></h2>
                  <div class="tx-success d-flex justify-content-between align-items-center">
                     <i class="ion-android-arrow-up mr-1"></i> <small>53.8%</small>
                  </div>
               </div>
               <div class="d-flex align-items-center tx-gray-500 tx-11"><span class="tx-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+2,030</span>since last month</div>
               <div id="countSpark2" class="mg-t-15"></div>
            </div>
         </div>
      </div>
      <div class="col-12 col-sm-6 col-md-6 col-xl-4">
         <div class="card mg-b-20">
            <div class="card-body">
               <h4 class="tx-uppercase tx-10 mg-b-10">강의</h4>
               <div class="d-flex justify-content-between align-items-center">
                  <h2 class="tx-20 tx-sm-18 tx-md-24 mg-b-0 tx-normal tx-rubik tx-dark"><span class="counter tx-rubik tx-normal">1,285</span><span class="tx-11">/per month</span></h2>
                  <div class="tx-success d-flex justify-content-between align-items-center">
                     <i class="ion-android-arrow-up mr-1"></i> <small>30.2%</small>
                  </div>
               </div>
               <div class="d-flex align-items-center tx-gray-500 tx-11"><span class="tx-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+685</span>since last month</div>
               <div id="countSpark3" class="mg-t-15"></div>
            </div>
         </div>
      </div>
      <!-- <div class="col-12 col-sm-6 col-md-6 col-xl-3">
         <div class="card mg-b-20">
            <div class="card-body">
               <h4 class="tx-uppercase tx-10 mg-b-10">Unresolved Tickets</h4>
               <div class="d-flex justify-content-between align-items-center">
                  <h2 class="tx-20 tx-sm-18 tx-md-24 mg-b-0 tx-normal tx-rubik tx-dark"><span class="counter tx-rubik tx-normal">1,020</span><span class="tx-11">/per month</span></h2>
                  <div class="tx-danger d-flex justify-content-between align-items-center">
                     <i class="ion-android-arrow-down mr-1"></i> <small>60.5%</small>
                  </div>
               </div>
               <div class="d-flex align-items-center tx-gray-500 tx-11"><span class="tx-danger mr-2 d-flex align-items-center"><i class="ion-android-arrow-down mr-1"></i>+1,035</span>since last month</div>
               <div id="countSpark4" class="mg-t-15"></div>
            </div>
         </div>
      </div> -->
   </div>
   <!--/ Counter End -->
   <!--================================-->
   <div class="row row-xs clearfix">
      <!-- Transaction History Start -->
      <!--================================-->				  
      <div class="col-md-6 col-xl-4">
         <div class="card mg-b-20">
            <div class="card-header">
               <h4 class="card-header-title">
		공지사항
               </h4>
               <div class="card-header-btn">
                  <a href="" data-toggle="collapse" class="btn card-collapse" data-target="#transactionHistory" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
                  <a href="" data-toggle="refresh" class="btn card-refresh" data-original-title="" title=""><i class="ion-android-refresh"></i></a>
                  <a href="" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
                  <a href="" data-toggle="remove" class="btn card-remove"><i class="ion-android-close"></i></a>
               </div>
            </div>
            <div class="collapse show" id="transactionHistory">
               <ul class="list-group list-group-flush tx-13 pd-t-10">
                  <li class="list-group-item d-flex pd-sm-x-20">
                     <div class="d-none d-sm-block"><span class="wd-40 ht-40 mg-r-10 d-flex align-items-center justify-content-center rounded card-icon-success"><i class="icon ion-checkmark"></i></span></div>
                     <div class="pd-sm-l-10">
                        <p class="tx-dark mg-b-0">Payment from <a href="" class="tx-dark mg-b-0 tx-semibold">#985632</a></p>
                        <span class="tx-12 mg-b-0 tx-gray-500">Customar ID: #857423</span>
                     </div>
                     <div class="mg-l-auto text-right">
                        <p class="mg-b-0 tx-rubik tx-dark">+$450<small class="tx-10">.50</small></p>
                        <span class="tx-12 tx-success mg-b-0">Completed</span>
                     </div>
                  </li>
                  <li class="list-group-item d-flex pd-sm-x-20">
                     <div class="d-none d-sm-block"><span class="wd-40 ht-40 mg-r-10 d-flex align-items-center justify-content-center rounded card-icon-success"><i class="icon ion-checkmark"></i></span></div>
                     <div class="pd-sm-l-10">
                        <p class="tx-dark mg-b-0">Process refund to <a href="" class="tx-dark mg-b-0 tx-semibold">#458762</a></p>
                        <span class="tx-12 mg-b-0 tx-gray-500">Customar ID: #354155</span>
                     </div>
                     <div class="mg-l-auto text-right">
                        <p class="mg-b-0 tx-rubik tx-dark">+$180<small class="tx-10">.50</small></p>
                        <span class="tx-12 tx-success mg-b-0">Completed</span>
                     </div>
                  </li>
                  <li class="list-group-item d-flex pd-sm-x-20">
                     <div class="d-none d-sm-block"><span class="wd-40 ht-40 mg-r-10 d-flex align-items-center justify-content-center rounded card-icon-warning"><i class="icon ion-shuffle"></i></span></div>
                     <div class="pd-sm-l-10">
                        <p class="tx-dark mg-b-0">Process delivery to <a href="" class="tx-dark mg-b-0 tx-semibold">#698524</a></p>
                        <span class="tx-12 mg-b-0 tx-gray-500">Customar ID: #452356</span>
                     </div>
                     <div class="mg-l-auto text-right">
                        <p class="mg-b-0 tx-rubik tx-dark">5 Items</p>
                        <span class="tx-12 tx-warning mg-b-0">For pickup</span>
                     </div>
                  </li>
                  <li class="list-group-item d-flex pd-sm-x-20">
                     <div class="d-none d-sm-block"><span class="wd-40 ht-40 mg-r-10 d-flex align-items-center justify-content-center rounded card-icon-success"><i class="icon ion-checkmark"></i></span></div>
                     <div class="pd-sm-l-10">
                        <p class="tx-dark mg-b-0">Payment from <a href="" class="tx-dark mg-b-0 tx-semibold">#365845</a></p>
                        <span class="tx-12 mg-b-0 tx-gray-500">Customar ID: #748562</span>
                     </div>
                     <div class="mg-l-auto text-right">
                        <p class="mg-b-0 tx-rubik tx-dark">+$129<small class="tx-10">.50</small></p>
                        <span class="tx-12 tx-success mg-b-0">Completed</span>
                     </div>
                  </li>
                  <li class="list-group-item d-flex pd-sm-x-20">
                     <div class="d-none d-sm-block"><span class="wd-40 ht-40 mg-r-10 d-flex align-items-center justify-content-center rounded card-icon-danger"><i class="icon ion-close"></i></span></div>
                     <div class="pd-sm-l-10">
                        <p class="tx-dark mg-b-0">Payment failed from <a href="" class="tx-dark mg-b-0 tx-semibold">#475821</a></p>
                        <span class="tx-12 mg-b-0 tx-gray-500">Customar ID: #457771</span>
                     </div>
                     <div class="mg-l-auto text-right">
                        <p class="mg-b-0 tx-rubik tx-dark">-$150<small class="tx-10">.50</small></p>
                        <span class="tx-12 tx-danger mg-b-0">Declined</span>
                     </div>
                  </li>
                  <li class="list-group-item d-flex pd-sm-x-20">
                     <div class="d-none d-sm-block"><span class="wd-40 ht-40 mg-r-10 d-flex align-items-center justify-content-center rounded card-icon-danger"><i class="icon ion-close"></i></span></div>
                     <div class="pd-sm-l-10">
                        <p class="tx-dark mg-b-0">Payment failed from <a href="" class="tx-dark mg-b-0 tx-semibold">#985324</a></p>
                        <small class="tx-12 mg-b-0 tx-gray-500">Customar ID: #548596</small>
                     </div>
                     <div class="mg-l-auto text-right">
                        <p class="mg-b-0 tx-rubik tx-dark">-$190<small class="tx-10">.50</small></p>
                        <span class="tx-12 tx-danger mg-b-0">Declined</span>
                     </div>
                  </li>
                  <li class="list-group-item d-flex pd-sm-x-20">
                     <div class="d-none d-sm-block"><span class="wd-40 ht-40 mg-r-10 d-flex align-items-center justify-content-center rounded card-icon-warning"><i class="icon ion-shuffle"></i></span></div>
                     <div class="pd-sm-l-10">
                        <p class="tx-dark mg-b-0">Process delivery to <a href="" class="tx-dark mg-b-0 tx-semibold">#698524</a></p>
                        <span class="tx-12 mg-b-0 tx-gray-500">Customar ID: #452356</span>
                     </div>
                     <div class="mg-l-auto text-right">
                        <p class="mg-b-0 tx-rubik tx-dark">5 Items</p>
                        <span class="tx-12 tx-warning mg-b-0">For pickup</span>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
      </div>
      <!--/ Transaction History End -->
      <!--================================-->
      <!-- Support Status Start -->
      <!--================================-->				  
      <div class="col-xl-8">
         <div class="card mg-b-20">
            <div class="card-header">
               <h4 class="card-header-title">
		인기 강사/강의
               </h4>
               <div class="card-header-btn">
                  <a href="" data-toggle="collapse" class="btn card-collapse" data-target="#supportStatus" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
                  <a href="" data-toggle="refresh" class="btn card-refresh"><i class="ion-android-refresh"></i></a>
                  <a href="" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
                  <a href="" data-toggle="remove" class="btn card-remove" data-original-title="" title="" data-init="true"><i class="ion-android-close"></i></a>
               </div>
            </div>
            <div class="card-body pd-0 collapse show" id="supportStatus">
               <div class="row pd-x-30 clearfix">
                  <div class="col-lg-4 col-md-4 col-sm-12 pd-y-20">
                     <span class="tx-uppercase tx-10 mg-b-10">Customer Satisfaction</span>
                     <h3 class="tx-dark tx-20 mg-b-0 tx-rubik tx-normal"><span class="counter">9.7</span>
                        <span class="tx-15 mg-l-10">
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="ion-ios-star-half lh-0 tx-warning"></i>
                        </span>
                     </h3>
                     <div class="tx-11 d-flex tx-gray-500"><span class="text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+535%</span>avg. per month</div>
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-12 pd-y-20">
                     <span class="tx-uppercase tx-10 mg-b-10">Overall Rating</span>
                     <h3 class="tx-dark tx-20 mg-b-0 tx-rubik tx-normal"><span class="counter">9.9</span>
                        <span class="tx-15 mg-l-10">
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="ion-ios-star-half lh-0 tx-warning"></i>
                        </span>
                     </h3>
                     <div class="tx-11 d-flex tx-gray-500"><span class="text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+128%</span>avg. per month</div>
                  </div>
                  <div class="col-lg-4 col-md-4 col-sm-12 pd-y-20">
                     <span class="tx-uppercase tx-10 mg-b-10">Agent Performance</span>
                     <h3 class="tx-dark tx-20 mg-b-0 tx-rubik tx-normal"><span class="counter">9.4</span>
                        <span class="tx-15 mg-l-10">
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="icon ion-star lh-0 tx-warning"></i>
                        <i class="icon ion-star lh-0 tx-gray-300"></i>
                        </span>
                     </h3>
                     <div class="tx-11 d-flex tx-gray-500"><span class="text-danger mr-2 d-flex align-items-center"><i class="ion-android-arrow-down mr-1"></i>-143%</span>avg. per month</div>
                  </div>
               </div>
               <div class="table-responsive">
                  <table class="table table-hover mg-0">
                     <thead class="tx-10 tx-uppercase">
                        <tr>
                           <th>Customer Name</th>
                           <th>Location</th>
                           <th>Tickets</th>
                           <th>Tickets Status</th>
                           <th>Customer Satisfaction</th>
                           <th class="text-right">Action</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td>
                              <div class="d-flex align-items-center">
                                 <div class="avatar mr-2">
                                    <img src="https://via.placeholder.com/100x100" class="img-fluid wd-40 ht-40 rounded-circle" alt="">
                                 </div>
                                 <span class="d-none d-xl-inline-block">John Mayers</span>
                              </div>
                           </td>
                           <td><i class="flag-icon flag-icon-es tx-20"></i></td>
                           <td>120+</td>
                           <td><span class="badge badge-outlined badge-primary">Open</span></td>
                           <td>
                              <div class="clearfix"> <span class="tx-dark tx-uppercase">4.8</span><small ><span class="mg-b-0">/120</span></small> 
                                 <span class="tx-15 mg-l-10 float-right">
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-gray-300"></i>
                                 </span>
                              </div>
                              <div class="progress ht-3 mg-b-10 op-5">
                                 <div class="progress-bar bg-primary wd-90p" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                           </td>
                           <td class="tx-right">
                              <ul class="list-unstyled list-inline mg-b-0">
                                 <li class="list-inline-item"><a href=""><i class="ion-android-close"></i></a></li>
                                 <li class="list-inline-item"><a href=""><i class="ion-android-create"></i></a></li>
                              </ul>
                           </td>
                        </tr>
                        <tr>
                           <td>
                              <div class="d-flex align-items-center">
                                 <div class="avatar mr-2">
                                    <img src="https://via.placeholder.com/100x100" class="img-fluid wd-40 ht-40 rounded-circle" alt="">
                                 </div>
                                 <span class="d-none d-xl-inline-block">Kelly Brans</span>
                              </div>
                           </td>
                           <td><i class="flag-icon flag-icon-us tx-20"></i></td>
                           <td>352+</td>
                           <td><span class="badge badge-outlined badge-success">Completed</span></td>
                           <td>
                              <div class="clearfix"> <span class="tx-dark tx-uppercase">5.0</span><small ><span class="mg-b-0">/352</span></small> 
                                 <span class="tx-15 mg-l-10 float-right">
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 </span>
                              </div>
                              <div class="progress ht-3 mg-b-10 op-5">
                                 <div class="progress-bar bg-success wd-100p" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                           </td>
                           <td class="tx-right">
                              <ul class="list-unstyled list-inline mg-b-0">
                                 <li class="list-inline-item"><a href=""><i class="ion-android-close"></i></a></li>
                                 <li class="list-inline-item"><a href=""><i class="ion-android-create"></i></a></li>
                              </ul>
                           </td>
                        </tr>
                        <tr>
                           <td>
                              <div class="d-flex align-items-center">
                                 <div class="avatar mr-2">
                                    <img src="https://via.placeholder.com/100x100" class="img-fluid wd-40 ht-40 rounded-circle" alt="">
                                 </div>
                                 <span class="d-none d-xl-inline-block">Tim Howard</span>
                              </div>
                           </td>
                           <td><i class="flag-icon flag-icon-de tx-20"></i></td>
                           <td>65+</td>
                           <td><span class="badge badge-outlined badge-warning">Pending</span></td>
                           <td>
                              <div class="clearfix"> <span class="tx-dark tx-uppercase">4.5</span><small ><span class="mg-b-0">/65</span></small> 
                                 <span class="tx-15 mg-l-10 float-right">
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-gray-300"></i>
                                 <i class="icon ion-star lh-0 tx-gray-300"></i>
                                 </span>
                              </div>
                              <div class="progress ht-3 mg-b-10 op-5">
                                 <div class="progress-bar bg-primary wd-75p" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                           </td>
                           <td class="tx-right">
                              <ul class="list-unstyled list-inline mg-b-0">
                                 <li class="list-inline-item"><a href=""><i class="ion-android-close"></i></a></li>
                                 <li class="list-inline-item"><a href=""><i class="ion-android-create"></i></a></li>
                              </ul>
                           </td>
                        </tr>
                        <tr>
                           <td>
                              <div class="d-flex align-items-center">
                                 <div class="avatar mr-2">
                                    <img src="https://via.placeholder.com/100x100" class="img-fluid wd-40 ht-40 rounded-circle" alt="">
                                 </div>
                                 <span class="d-none d-xl-inline-block">Brans Tim</span>
                              </div>
                           </td>
                           <td><i class="flag-icon flag-icon-gb tx-20"></i></td>
                           <td>113+</td>
                           <td><span class="badge badge-outlined badge-primary">Open</span></td>
                           <td>
                              <div class="clearfix"> <span class="tx-dark tx-uppercase">4.2</span><small ><span class="mg-b-0">/113</span></small> 
                                 <span class="tx-15 mg-l-10 float-right">
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-gray-300"></i>
                                 </span>
                              </div>
                              <div class="progress ht-3 mg-b-10 op-5">
                                 <div class="progress-bar bg-primary wd-90p" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                           </td>
                           <td class="tx-right">
                              <ul class="list-unstyled list-inline mg-b-0">
                                 <li class="list-inline-item"><a href=""><i class="ion-android-close"></i></a></li>
                                 <li class="list-inline-item"><a href=""><i class="ion-android-create"></i></a></li>
                              </ul>
                           </td>
                        </tr>
                        <tr>
                           <td>
                              <div class="d-flex align-items-center">
                                 <div class="avatar mr-2">
                                    <img src="https://via.placeholder.com/100x100" class="img-fluid wd-40 ht-40 rounded-circle" alt="">
                                 </div>
                                 <span class="d-none d-xl-inline-block">Tim Brans</span>
                              </div>
                           </td>
                           <td><i class="flag-icon flag-icon-fr tx-20"></i></td>
                           <td>60+</td>
                           <td><span class="badge badge-outlined badge-danger">closed</span></td>
                           <td>
                              <div class="clearfix"> <span class="tx-dark tx-uppercase">3.8</span><small ><span class="mg-b-0">/60</span></small> 
                                 <span class="tx-15 mg-l-10 float-right">
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-warning"></i>
                                 <i class="icon ion-star lh-0 tx-gray-300"></i>
                                 <i class="icon ion-star lh-0 tx-gray-300"></i>
                                 </span>
                              </div>
                              <div class="progress ht-3 mg-b-10 op-5">
                                 <div class="progress-bar bg-danger wd-60p" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                           </td>
                           <td class="tx-right">
                              <ul class="list-unstyled list-inline mg-b-0">
                                 <li class="list-inline-item"><a href=""><i class="ion-android-close"></i></a></li>
                                 <li class="list-inline-item"><a href=""><i class="ion-android-create"></i></a></li>
                              </ul>
                           </td>
                        </tr>
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
      <!--/ Support Status End -->
   </div>
   <div class="row row-xs clearfix">
      <!--================================-->
      <!-- Support Tickets Metrics Start -->
      <!--================================-->				  
      <div class="col-xl-12">
         <div class="card mg-b-20">
            <div class="card-header">
               <h4 class="card-header-title">
		월별 학생 등록 현황
               </h4>
               <div class="card-header-btn">
                  <a href="" data-toggle="collapse" class="btn card-collapse" data-target="#supportTicketsMetrics" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
                  <a href="" data-toggle="refresh" class="btn card-refresh"><i class="ion-android-refresh"></i></a>
                  <a href="" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
                  <a href="" data-toggle="remove" class="btn card-remove" data-original-title="" title="" data-init="true"><i class="ion-android-close"></i></a>
               </div>
            </div>
            <div class="card-body collapse show" id="supportTicketsMetrics">
               <div class="row">
                  <div class="col-xl-9">
                     <div id="supportTicketchart"></div>
                  </div>
                  <div class="col-xl-3">
                     <div class="row">
                        <div class="col-sm-12 col-md-6 col-xl-12 mg-t-40 mg-xl-t-0">
                           <div class="d-flex justify-content-between">
                              <h6 class="tx-uppercase tx-10 mg-b-0 tx-gray-500">New Tickets</h6>
                              <span class="tx-10 tx-gray-500">65% goal reached</span>
                           </div>
                           <div class="d-flex align-items-end justify-content-between mg-b-5">
                              <h5 class="mg-b-0 tx-dark tx-rubik tx-normal"><span class="counter">1,860</span></h5>
                              <div class="d-flex align-items-center tx-gray-600"><span class="small text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+351</span></div>
                           </div>
                           <div class="progress ht-3 mg-b-0 op-5">
                              <div class="progress-bar bg-teal wd-70p" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                           </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-xl-12 mg-t-40">
                           <div class="d-flex justify-content-between">
                              <h6 class="tx-uppercase tx-10 mg-b-0 tx-gray-500">Solved Tickets</h6>
                              <span class="tx-10 tx-gray-500">65% goal reached</span>
                           </div>
                           <div class="d-flex align-items-end justify-content-between mg-b-5">
                              <h5 class="mg-b-0 tx-dark tx-rubik tx-normal"><span class="counter">2,530</span></h5>
                              <div class="d-flex align-items-center tx-gray-600"><span class="small text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+425</span></div>
                           </div>
                           <div class="progress ht-3 mg-b-0 op-5">
                              <div class="progress-bar bg-success wd-80p" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                           </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-xl-12 mg-t-40">
                           <div class="d-flex justify-content-between">
                              <h6 class="tx-uppercase tx-10 mg-b-0 tx-gray-500">Open Tickets</h6>
                              <span class="tx-10 tx-gray-500">65% goal reached</span>
                           </div>
                           <div class="d-flex align-items-end justify-content-between mg-b-5">
                              <h5 class="mg-b-0 tx-dark tx-rubik tx-normal"><span class="counter">2,148</span></h5>
                              <div class="d-flex align-items-center tx-gray-600"><span class="small text-danger mr-2 d-flex align-items-center"><i class="ion-android-arrow-down mr-1"></i>-211</span></div>
                           </div>
                           <div class="progress ht-3 mg-b-0 op-5">
                              <div class="progress-bar bg-danger wd-70p" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                           </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-xl-12 mg-t-40">
                           <div class="d-flex justify-content-between">
                              <h6 class="tx-uppercase tx-10 mg-b-0 tx-gray-500">Unresolved Tickets</h6>
                              <span class="tx-10 tx-gray-500">65% goal reached</span>
                           </div>
                           <div class="d-flex align-items-end justify-content-between mg-b-5">
                              <h5 class="mg-b-0 tx-dark tx-rubik tx-normal"><span class="counter">1,290</span></h5>
                              <div class="d-flex align-items-center tx-gray-600"><span class="small text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+151</span></div>
                           </div>
                           <div class="progress ht-3 mg-b-0 op-5">
                              <div class="progress-bar bg-primary wd-65p" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!--/ Support Tickets Metrics End -->
   </div>
