<template>
    <div>
      <!-- 最外层div包括所有文本框 -->
      <div class="login-container">
        <div class="login">
          <!-- 最上面的登录注册头部 -->
          <div class="title">
            <div class="loginin">登录</div>
            <div class="reg">注册</div>
          </div>
          <!--姓名文本框-->
          <div class="name"><input type="text" placeholder="姓名"></div>
          <!-- 邮箱地址文本框 -->
          <div class="email"><input type="text" placeholder="邮箱地址"></div>
          <!-- 密码文本框 -->
          <div class="pwd"><input type="password" placeholder="密码"></div>
          <!-- 手机验证码文本框 -->
          <div class="phone">
            <div class="one"><span>86&nbsp;+</span></div>
            <div class="num" ><input   type="text" placeholder="手机号"></div>
          </div>
          <!-- 验证码按钮 -->
          <div class="yzm">
            <input type="text" placeholder="验证码"> <span>发送验证码</span>
          </div>
          <!-- 复选框按钮 -->
          <div class="agree"><input type="checkbox" checked>是的，如果餐厅有优惠和活动告诉我吧！</div>
          <!-- 注册按钮 -->
          <button class="btn"><a href="javascript:;">马上注册</a>
          </button>
        </div>
      </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
  .login-container{
    width:100%;
  }
  /* 最外面div的外边距 */
    .login{
        margin:0.625rem;
      }
      /* 登录注册页头部 */
      .title{
         /* width:95%; */
        height:3.125rem;
        display: flex;
        justify-content: space-between;
        border-radius:2px;
      }
      /* 登录框 */
      .loginin{
        width:50%;
        display:inline-block;
        text-align: center;
        line-height: 3.125rem;
        font-size: 0.875rem;
        color:#fff;
        background:rgba(0, 0, 0, 0.6);
      }
      /* 注册框 */
      .reg{
        width:50%;
        display:inline-block;
        text-align: center;
        line-height: 3.125rem;
        font-size: 0.875rem;
        
      }
      /* 姓名文本框 */
      .name{
        /* width:95%; */
        /* height:3.125rem; */
        margin-top:1.25rem;
        border:1px solid #ddd;
        border-radius: 2px;
      }
      /* 邮箱文本框 */
      .email{
        /* width:95%; */
        /* height:3.125rem; */
        margin-top:1.25rem;
        border:1px solid #ddd;
        border-radius: 2px;
      }
      /* 密码文本框 */
      .pwd{
        /* width:95%; */
        /* height:3.125rem; */
        margin-top:1.25rem;
        border:1px solid #ddd;
        border-radius: 2px;
      }
      input{
        border:none;
        padding:1rem 0.625rem ;
        font-size:0.875rem;
        outline: none;
      }
      /* 手机号码文本框 */
      .phone{
        /* height:3.125rem; */
        margin-top:1.25rem;
        border:1px solid #ddd;
        border-radius: 2px;
      }
      /* 复选框 */
      .agree{
        margin-top:1.25rem;
      }
      .agree>input{
        font-size:0.9375rem;
        color:#575757;
      }
      /* 验证码的设置 */
      .yzm{
        /* width:95%; */
        /* height:3.125rem; */
        margin-top:20px;
        border:1px solid #ddd;
      }
      .one{
        display: inline-block;
      }
      .num{
        display: inline-block;
      }
      .one>span{
        padding-left:0.625rem;
      }
      .yzm>span{
        display: inline-block;
        width:5rem;
        height:1.875rem;
        background-color:#d8d8d8;
        font-size:14px;
        margin-top:4px;
        margin-right:4px;
        padding-top:11px;
        padding-left:10px;
        float:right;
      }
      /* 注册按钮的样式 */
      .btn{
        width:100%;
        height:3.125rem;
        margin-top:1.25rem;
        /* margin-left:5px;
        margin-right:5px; */
        background-color:#da2028;
        cursor: pointer;
        border: none;
        outline: none;
        border-radius: 2px;
      }
      .btn>a{
        color:#ffffff;
        text-decoration: none;
        font-size: 1.125rem;
    
      }
</style>