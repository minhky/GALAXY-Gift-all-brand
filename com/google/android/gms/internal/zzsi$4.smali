.class final Lcom/google/android/gms/internal/zzsi$4;
.super Lcom/google/android/gms/internal/zzsi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzsi;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzsi",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzsi;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$4;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/Float;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzsi;->b()Lcom/google/android/gms/internal/zzsi$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$4;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$4;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzsi$zza;->a(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
