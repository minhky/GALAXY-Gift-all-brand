.class public final Lcom/google/android/gcm/GCMRegistrar;
.super Ljava/lang/Object;
.source "GCMRegistrar.java"


# static fields
.field private static a:Lcom/google/android/gcm/GCMBroadcastReceiver;

.field private static b:Ljava/lang/String;


# direct methods
.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 370
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->k(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 371
    const-string/jumbo v1, "regId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->j(Landroid/content/Context;)I

    move-result v2

    .line 373
    const-string/jumbo v3, "GCMRegistrar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Saving regId on app version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    const-string/jumbo v3, "regId"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    const-string/jumbo v3, "appVersion"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 377
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 378
    return-object v1
.end method

.method static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 234
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_e

    .line 235
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No senderIds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    :goto_17
    array-length v2, p0

    if-ge v0, v2, :cond_28

    .line 239
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 241
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0x8

    if-ge v0, v1, :cond_27

    .line 91
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device must be at least API Level 8 (instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    :try_start_2b
    const-string/jumbo v1, "com.google.android.gsf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_32} :catch_33

    .line 101
    return-void

    .line 97
    :catch_33
    move-exception v0

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Device does not have package com.google.android.gsf"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 495
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->k(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 497
    const-string/jumbo v1, "backoff_ms"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 499
    return-void
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 217
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->h(Landroid/content/Context;)V

    .line 218
    invoke-static {p0, p1}, Lcom/google/android/gcm/GCMRegistrar;->b(Landroid/content/Context;[Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 317
    const-string/jumbo v0, "GCMRegistrar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting the name of retry receiver class to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sput-object p0, Lcom/google/android/gcm/GCMRegistrar;->b:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 252
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->h(Landroid/content/Context;)V

    .line 253
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->c(Landroid/content/Context;)V

    .line 254
    return-void
.end method

.method static varargs b(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "GCMRegistrar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Registering app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of senders "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v2, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    const-string/jumbo v2, "sender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 231
    return-void
.end method

.method static c(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 272
    const-string/jumbo v0, "GCMRegistrar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unregistering app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string/jumbo v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 278
    return-void
.end method

.method static declared-synchronized d(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 284
    const-class v1, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->a:Lcom/google/android/gcm/GCMBroadcastReceiver;

    if-nez v0, :cond_4d

    .line 285
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->b:Ljava/lang/String;

    if-nez v0, :cond_4f

    .line 287
    const-string/jumbo v0, "GCMRegistrar"

    const-string/jumbo v2, "internal error: retry receiver class not set yet"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v0, Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-direct {v0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMRegistrar;->a:Lcom/google/android/gcm/GCMBroadcastReceiver;

    .line 302
    :goto_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".permission.C2D_MESSAGE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    const-string/jumbo v3, "GCMRegistrar"

    const-string/jumbo v4, "Registering receiver"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v3, Lcom/google/android/gcm/GCMRegistrar;->a:Lcom/google/android/gcm/GCMBroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_9b

    .line 311
    :cond_4d
    monitor-exit v1

    return-void

    .line 292
    :cond_4f
    :try_start_4f
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gcm/GCMBroadcastReceiver;

    sput-object v0, Lcom/google/android/gcm/GCMRegistrar;->a:Lcom/google/android/gcm/GCMBroadcastReceiver;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5d} :catch_5e
    .catchall {:try_start_4f .. :try_end_5d} :catchall_9b

    goto :goto_1b

    .line 294
    :catch_5e
    move-exception v0

    .line 295
    :try_start_5f
    const-string/jumbo v0, "GCMRegistrar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not create instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/gcm/GCMRegistrar;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " directly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-direct {v0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMRegistrar;->a:Lcom/google/android/gcm/GCMBroadcastReceiver;
    :try_end_9a
    .catchall {:try_start_5f .. :try_end_9a} :catchall_9b

    goto :goto_1b

    .line 284
    :catchall_9b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/high16 v3, -0x80000000

    .line 330
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->k(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 331
    const-string/jumbo v0, "regId"

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    const-string/jumbo v2, "appVersion"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 335
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->j(Landroid/content/Context;)I

    move-result v2

    .line 336
    if-eq v1, v3, :cond_51

    if-eq v1, v2, :cond_51

    .line 337
    const-string/jumbo v0, "GCMRegistrar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "App version changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; resetting registration id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 340
    const-string/jumbo v0, ""

    .line 342
    :cond_51
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 350
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static h(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 470
    const-string/jumbo v0, "GCMRegistrar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetting backoff for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/16 v0, 0xbb8

    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->a(Landroid/content/Context;I)V

    .line 472
    return-void
.end method

.method static i(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 481
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->k(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 482
    const-string/jumbo v1, "backoff_ms"

    const/16 v2, 0xbb8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static j(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 453
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 455
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return v0

    .line 456
    :catch_10
    move-exception v0

    .line 458
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Coult not get package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static k(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 502
    const-string/jumbo v0, "com.google.android.gcm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
