<template>
    <div class="product">  
      <div class="pro-1">
       <my-search></my-search> 
       <div @click="pwz($event)">
        <van-popup v-model="show1" >     
         <div class="pro-wz" >
            <div class="pro-wz-name">
              位置
             </div>
             <div class="pro-wz-inner">
             <div class="pro-wz-title">
               行政区
             </div>
              <div class="pro-wz-cases">
                <label :class='pwdata==2330?"proBtnActive":"proWzTag"'>
                   <input type="checkbox" data-val="2330" v-model="pwChe0" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                  <span class="pro-wz-span">黄埔区</span>
                </label>
                 <label :class='pwdata==2331?"proBtnActive":"proWzTag"'>
                   <input type="checkbox" data-val="2331"  v-model="pwChe1" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                   <span class="pro-wz-span">徐汇区</span>
               </label>
                <label :class='pwdata==2332?"proBtnActive":"proWzTag"'>
                   <input type="checkbox" data-val="2332"  v-model="pwChe2" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                   <span class="pro-wz-span">高新区</span>
              </label>
                <label :class='pwdata==2333?"proBtnActive":"proWzTag"'>
                  <input type="checkbox" data-val="2333"  v-model="pwChe3" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                  <span class="pro-wz-span">雁塔区</span>
                </label>
             </div>
          </div>
        <div class="pro-wz-tj" @click="ptj">
          提交
        </div>
        </div> 
       </van-popup>
        <van-popup v-model="show2">
        <div>
        <div class="pro-wz" >
            <div class="pro-wz-name">
              菜式
            </div>
          <div class="pro-wz-inner">
            <div class="pro-wz-cases">
          
             <label :class='pwdata==3330?"proBtnActive":"proWzTag"'>
                 <input type="checkbox" data-val="3330" v-model="pcChe0" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                 <span class="pro-wz-span">亚洲菜</span>
             </label>
             <label :class='pwdata==3331?"proBtnActive":"proWzTag"'>
                 <input type="checkbox" data-val="3331" v-model="pcChe1" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                 <span class="pro-wz-span">法国菜</span>
              </label>
          
             <label :class='pwdata==3332?"proBtnActive":"proWzTag"'>
                 <input type="checkbox" data-val="3332" v-model="pcChe2" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                 <span class="pro-wz-span">印度菜</span>
              </label>   
            </div>
        </div>
        <div class="pro-wz-tj" @click="ptj">
          提交
        </div>
        </div>
        </div>
      </van-popup>
        <van-popup v-model="show3">
        <div>
          <div class="pro-wz" >
            <div class="pro-wz-name">
              位置
             </div>
             <div class="pro-wz-inner">
             <div class="pro-wz-title">
               行政区
             </div>
              <div class="pro-wz-cases">
                <label :class='pwdata==2330?"proBtnActive":"proWzTag"'>
                   <input type="checkbox" data-val="2330" v-model="pwChe0" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                  <span class="pro-wz-span">黄埔区</span>
                </label>
                 <label :class='pwdata==2331?"proBtnActive":"proWzTag"'>
                   <input type="checkbox" data-val="2331"  v-model="pwChe1" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                   <span class="pro-wz-span">徐汇区</span>
               </label>
                <label :class='pwdata==2332?"proBtnActive":"proWzTag"'>
                   <input type="checkbox" data-val="2332"  v-model="pwChe2" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                   <span class="pro-wz-span">高新区</span>
              </label>
                <label :class='pwdata==2333?"proBtnActive":"proWzTag"'>
                  <input type="checkbox" data-val="2333"  v-model="pwChe3" style="display: none;margin: 4px 0 0; margin-top: 1px ;line-height: normal;">
                  <span class="pro-wz-span">雁塔区</span>
                </label>
             </div>
          </div>
        <div class="pro-wz-tj" @click="ptj">
          提交
        </div>
        </div> 
        </div>
      </van-popup>
        <van-popup v-model="show4">
        <div>

        </div>
      </van-popup> 
    </div>
        <div class="pro-top-nav">
                    
          <div class="pro-t-b"> 
           <span class="pro-nav-span"> 
           <van-button type="primary" @click="showPopup(1)" class="pro-nav-btn">
               位置
            </van-button>
           </span>
           <span class="pro-nav-span"> 
         <van-button type="primary" @click="showPopup(2)" class="pro-nav-btn">
                                  菜系
            </van-button>
           </span>
             <span class="pro-nav-span"> 
         <van-button type="primary" @click="showPopup(3)" class="pro-nav-btn">
                                  排序
            </van-button>
           </span>  <span class="pro-nav-span"> 
         <van-button type="primary" @click="showPopup(4)" class="pro-nav-btn">
                                  过滤
            </van-button>
           </span>
           </div>
            
          <div class="pro-rec">
             <div class="pro-text">
               <p class="pro-p">推荐:</p>
            </div>
             <div class="pro-select">
                <div class="pro-select-span" style="width:6.7rem">
                   <img src="https://assets.diningcity.cn/tag/6724614ab1446aac86fa7c439f99e3d3.png" alt="">
                   <p>特殊礼遇</p>
                </div>
                  <div class="pro-select-span" style="width:6.2rem">
                   <img src="https://assets.diningcity.cn/tag/discount.png" alt="">
                   <p>订立省</p>
                </div>
                 <div class="pro-select-span" style="width:6.7rem">
                   <img src="https://assets.diningcity.cn/tag/224efa1de4a8ed36b6636c72de01a866.png" alt="">
                   <p>即刻预定</p>
                </div>          
               </div>
             </div>
          </div>
       </div>
       <div style="width:100%;height:12rem; "></div>
    <ul>
      <li v-for="(item,index) in product" :key="index"  >  
        <div class="pro-item" >
         <div class="pro-item-inner">
             <table></table>
             <img :src="globalURL+item.plsrc" class="pro-item-img " alt="">
              <div class="pro-item-title" style="padding-top:0">
                 <div class="pro-content">
                    <div class="pro-con-type">
                        <span>{{item.ptype}}</span>
                    </div>
                    <div class="pro-con-name">
                        <span>
                     {{item.ptitle}}
                    </span>
                   </div>
                   <div class="pro-con-price">
                           <span>
                           Avg: {{item.pavg}}
                           </span>
                           <div style="margin-top:.5rem;font-size: 0.3rem;font-family: Helvetica;color: #636363;">
                            {{item.pemp}}
                           </div>
                   </div>
                </div>
            
            </div>
                <div class="pro-con-num"  style="margin:0">
                   <div class="pro-num">
                      <div class="pro-num1">
                        {{item.rating}}
                      </div>
                   </div>
                   <div class="pro-num-name">
                        Rating
                   </div>
                   <span class="pro-num-dtc">7.7 km</span>
                </div>
             </div>
             <div>
                  <div class="pro-card">
                    <div class="pro-card-img">
                          <img :src="globalURL+item.pcards1" alt="" class="pro-card-img2">
                    </div>
                    <div class="pro-card-name"> {{item.pcardt1}}</div>
                  </div>  
                   <div class="pro-card">
                    <div class="pro-card-img">
                          <img :src="globalURL+item.pcards2" alt="" class="pro-card-img2">
                    </div>
                    <div class="pro-card-name"> {{item.pcardt2}}</div>
                  </div>               
              </div>  
           </div>
      </li>  
        <!--
     <li>
        <div class="pro-item">
         <div class="pro-item-inner">
             <table></table>
             <div class="pro-item-img"   style="background-image: url('https://assets.diningcity.cn/restaurantpictures/71326_restaurant_Coffee_Tree.jpg');">
            </div>
              <div class="pro-item-title" style="padding-top:0">
                 <div class="pro-content">
                    <div class="pro-con-type">
                        <span>意大利菜</span>
                    </div>
                    <div class="pro-con-name">
                        <span>
                      Camelia 意大利餐厅 浦东四季酒店
                    </span>
                   </div>
                   <div class="pro-con-price">
                           <span>
                            Avg.￥300   
                           </span>
                   </div>
                </div>
            
            </div>
                <div class="pro-con-num"  style="margin:0">
                   <div class="pro-num">
                      <div class="pro-num1">
                        8.7
                      </div>
                   </div>
                   <div class="pro-num-name">
                        Rating
                   </div>
                   <span class="pro-num-dtc">7.7 km</span>
                </div>
             </div>
               <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/6724614ab1446aac86fa7c439f99e3d3.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">VIP 特殊礼遇</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林餐盘</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林指南推介餐厅</div>
               </div>
           </div>
      </li>
        <li>
        <div class="pro-item">
         <div class="pro-item-inner">
             <table></table>
             <div class="pro-item-img"   style="background-image: url('https://assets.diningcity.cn/restaurantpictures/71326_restaurant_Coffee_Tree.jpg');">
            </div>
              <div class="pro-item-title" style="padding-top:0">
                 <div class="pro-content">
                    <div class="pro-con-type">
                        <span>意大利菜</span>
                    </div>
                    <div class="pro-con-name">
                        <span>
                      Camelia 意大利餐厅 浦东四季酒店
                    </span>
                   </div>
                   <div class="pro-con-price">
                           <span>
                            Avg.￥300   
                           </span>
                   </div>
                </div>
            
            </div>
                <div class="pro-con-num"  style="margin:0">
                   <div class="pro-num">
                      <div class="pro-num1">
                        8.7
                      </div>
                   </div>
                   <div class="pro-num-name">
                        Rating
                   </div>
                   <span class="pro-num-dtc">7.7 km</span>
                </div>
             </div>
               <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/6724614ab1446aac86fa7c439f99e3d3.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">VIP 特殊礼遇</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林餐盘</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林指南推介餐厅</div>
               </div>
           </div>
      </li>
        <li>
        <div class="pro-item">
         <div class="pro-item-inner">
             <table></table>
             <div class="pro-item-img"   style="background-image: url('https://assets.diningcity.cn/restaurantpictures/71326_restaurant_Coffee_Tree.jpg');">
            </div>
              <div class="pro-item-title" style="padding-top:0">
                 <div class="pro-content">
                    <div class="pro-con-type">
                        <span>意大利菜</span>
                    </div>
                    <div class="pro-con-name">
                        <span>
                      Camelia 意大利餐厅 浦东四季酒店
                    </span>
                   </div>
                   <div class="pro-con-price">
                           <span>
                            Avg.￥300   
                           </span>
                   </div>
                </div>
            
            </div>
                <div class="pro-con-num"  style="margin:0">
                   <div class="pro-num">
                      <div class="pro-num1">
                        8.7
                      </div>
                   </div>
                   <div class="pro-num-name">
                        Rating
                   </div>
                   <span class="pro-num-dtc">7.7 km</span>
                </div>
             </div>
               <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/6724614ab1446aac86fa7c439f99e3d3.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">VIP 特殊礼遇</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林餐盘</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林指南推介餐厅</div>
               </div>
           </div>
      </li>  
          <li>
        <div class="pro-item">
         <div class="pro-item-inner">
             <table></table>
             <div class="pro-item-img"   style="background-image: url('https://assets.diningcity.cn/restaurantpictures/71326_restaurant_Coffee_Tree.jpg');">
            </div>
              <div class="pro-item-title" style="padding-top:0">
                 <div class="pro-content">
                    <div class="pro-con-type">
                        <span>意大利菜</span>
                    </div>
                    <div class="pro-con-name">
                        <span>
                      Camelia 意大利餐厅 浦东四季酒店
                    </span>
                   </div>
                   <div class="pro-con-price">
                           <span>
                            Avg.￥300   
                           </span>
                   </div>
                </div>
            
            </div>
                <div class="pro-con-num"  style="margin:0">
                   <div class="pro-num">
                      <div class="pro-num1">
                        8.7
                      </div>
                   </div>
                   <div class="pro-num-name">
                        Rating
                   </div>
                   <span class="pro-num-dtc">7.7 km</span>
                </div>
             </div>
               <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/6724614ab1446aac86fa7c439f99e3d3.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">VIP 特殊礼遇</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林餐盘</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林指南推介餐厅</div>
               </div>
           </div>
      </li>  
          <li>
        <div class="pro-item">
         <div class="pro-item-inner">
             <table></table>
             <div class="pro-item-img"   style="background-image: url('https://assets.diningcity.cn/restaurantpictures/71326_restaurant_Coffee_Tree.jpg');">
            </div>
              <div class="pro-item-title" style="padding-top:0">
                 <div class="pro-content">
                    <div class="pro-con-type">
                        <span>意大利菜</span>
                    </div>
                    <div class="pro-con-name">
                        <span>
                      Camelia 意大利餐厅 浦东四季酒店
                    </span>
                   </div>
                   <div class="pro-con-price">
                           <span>
                            Avg.￥300   
                           </span>
                   </div>
                </div>
            
            </div>
                <div class="pro-con-num"  style="margin:0">
                   <div class="pro-num">
                      <div class="pro-num1">
                        8.7
                      </div>
                   </div>
                   <div class="pro-num-name">
                        Rating
                   </div>
                   <span class="pro-num-dtc">7.7 km</span>
                </div>
             </div>
               <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/6724614ab1446aac86fa7c439f99e3d3.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">VIP 特殊礼遇</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林餐盘</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林指南推介餐厅</div>
               </div>
           </div>
      </li>    
          <li>
        <div class="pro-item">
         <div class="pro-item-inner">
             <table></table>
             <div class="pro-item-img"   style="background-image: url('https://assets.diningcity.cn/restaurantpictures/71326_restaurant_Coffee_Tree.jpg');">
            </div>
              <div class="pro-item-title" style="padding-top:0">
                 <div class="pro-content">
                    <div class="pro-con-type">
                        <span>意大利菜</span>
                    </div>
                    <div class="pro-con-name">
                        <span>
                      Camelia 意大利餐厅 浦东四季酒店
                    </span>
                   </div>
                   <div class="pro-con-price">
                           <span>
                            Avg.￥300   
                           </span>
                   </div>
                </div>
            
            </div>
                <div class="pro-con-num"  style="margin:0">
                   <div class="pro-num">
                      <div class="pro-num1">
                        8.7
                      </div>
                   </div>
                   <div class="pro-num-name">
                        Rating
                   </div>
                   <span class="pro-num-dtc">7.7 km</span>
                </div>
             </div>
               <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/6724614ab1446aac86fa7c439f99e3d3.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">VIP 特殊礼遇</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林餐盘</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林指南推介餐厅</div>
               </div>
           </div>
      </li>  
          <li>
        <div class="pro-item">
         <div class="pro-item-inner">
             <table></table>
             <div class="pro-item-img"   style="background-image: url('https://assets.diningcity.cn/restaurantpictures/71326_restaurant_Coffee_Tree.jpg');">
            </div>
              <div class="pro-item-title" style="padding-top:0">
                 <div class="pro-content">
                    <div class="pro-con-type">
                        <span>意大利菜</span>
                    </div>
                    <div class="pro-con-name">
                        <span>
                      Camelia 意大利餐厅 浦东四季酒店
                    </span>
                   </div>
                   <div class="pro-con-price">
                           <span>
                            Avg.￥300   
                           </span>
                   </div>
                </div>
            
            </div>
                <div class="pro-con-num"  style="margin:0">
                   <div class="pro-num">
                      <div class="pro-num1">
                        8.7
                      </div>
                   </div>
                   <div class="pro-num-name">
                        Rating
                   </div>
                   <span class="pro-num-dtc">7.7 km</span>
                </div>
             </div>
               <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/6724614ab1446aac86fa7c439f99e3d3.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">VIP 特殊礼遇</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林餐盘</div>
               </div>
                  <div class="pro-card">
                   <div class="pro-card-img">
                        <img src="https://assets.diningcity.cn/tag/0c2bb3b31ccc6f5c10e70190002d6b17.png" alt="" class="pro-card-img2">
                   </div>
                    <div class="pro-card-name">米其林指南推介餐厅</div>
               </div>
           </div>
      </li>   -->
     </ul>  
     </div> 
</template>
<script>
export default {
  data() {
    return {
      show1: false,
      show2: false,
      show3: false,
      show4: false,
      pcard:[], 
      product:[],
      pwChe0:false,
      pwChe1:false,
      pwChe2:false,
      pwChe3:false,
      pcChe0:false,
      pcChe1:false,
      pcChe2:false,
      pwlist:[
      ],
       pwdata:0
    }
  },

  methods: {
    showPopup(p) {
        if(p==1){
       this.show1 = true;
      }else if(p==2){
       this.show2 = true;
      }else if(p==3){
       this.show3 = true;
      }else if(p){
       this.show4=true
      }
    },
    //
    pwz(e){
     this.pwlist=[this.pwChe0,this.pwChe1,this.pwChe2,this.pwChe3,this.pcChe0,this.pcChe1,this.pcChe2]
      var tar=e.target
      if(tar.nodeName=="INPUT"){      
         for(var i in this.pwlist){
         this.pwlist[i]=false
         }
         tar.checked=true
         if(tar.checked==true){
             this.pwdata=tar.dataset.val
         }  
      }
  
     },
     ptj(){
       console.log(11)
          this.ax(this.pwdata) 
      },
    //发送ajax请求
      ax(pid){
        console.log(pid)
        this.axios.get('/product',{params:{id:pid}}).then(res=>{
         this.product=JSON.parse(res.data.result);
         console.log(this.product)
      })
   
    }
  },
  created(){
   this.ax()
  }
};
</script>
 